import 'package:bishop/bishop.dart' as bp;
import 'package:lichess_prototype/model/model.dart';
import 'package:squares/squares.dart' as sq;
import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:lichess_prototype/locator.dart';
import 'package:lichess_prototype/model/event.dart';
import 'package:lichess_prototype/model/game/game.dart';
import 'package:square_bishop/square_bishop.dart';
import 'package:lichess_prototype/services/api/api_client.dart';

part 'game_controller.g.dart';

// Really just to facilitate a proof of concept.
// A real version will have a persistent game and incremental state updates etc.
class GameController extends Cubit<GameControllerState> {
  final String gameId;
  GameController(this.gameId) : super(GameControllerState.initial) {
    init();
  }

  late bp.Game bishop;

  Future<void> init() async {
    final result = await api().getBoardStream(gameId);
    if (!result.ok) {
      emit(GameControllerState(error: result.error ?? 'Unknown error'));
    }
    result.object!.listen(_handleStreamEvent);
  }

  void _handleStreamEvent(Event event) {
    Game? game = state.game;
    if (event is GameFullEvent) {
      game = event.game;
    }
    if (event is GameStateEvent) {
      if (game == null) {
        throw Exception(
            'GameController received GameStateEvent without a game');
      }
      game = game.copyWith(state: event.gameState);
    }
    bishop = bp.Game(
      variant: bp.Variant.standard(),
      fen: game!.initialFen == 'startpos' ? null : game.initialFen,
    );
    for (String m in game.state.moveList) {
      final move = bishop.getMove(m);
      if (move == null) {
        throw Exception('Invalid move $m in game $gameId');
      }
      bishop.makeMove(move);
    }
    emit(
      GameControllerState(
        game: game,
        board: bishop.squaresState(
          game.colourForPlayer(auth().state.user?.id ?? '__observer'),
        ),
      ),
    );
  }

  SquaresState get squaresState => bishop.squaresState(
        state.game!.colourForPlayer(auth().state.user?.id ?? '__observer'),
      );

  Future<Result<String>> makeMove(sq.Move move) async {
    final ok = bishop.makeSquaresMove(move);
    if (!ok) return Result.error('Invalid move');
    emit(state.copyWith(board: squaresState));
    String moveStr = bishop.toAlgebraic(bishop.state.move!);
    final result = await api().makeMove(gameId, moveStr);
    if (result.ok && result.object! == true) return Result.ok(moveStr);
    return Result.error('Move submission failed: ${result.error ?? 'unknown'}');
  }
}

@CopyWith()
class GameControllerState {
  final bool loading;
  final String? error;
  final Game? game;
  final SquaresState? board;

  bool get hasError => error != null;

  const GameControllerState({
    this.loading = false,
    this.error,
    this.game,
    this.board,
  });

  static const initial = GameControllerState(loading: true);
}
