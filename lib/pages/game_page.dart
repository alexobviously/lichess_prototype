import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_prototype/controllers/game_controller.dart';
import 'package:lichess_prototype/ui/scaffold.dart';
import 'package:squares/squares.dart';

class GamePage extends StatefulWidget {
  final String gameId;
  const GamePage({super.key, required this.gameId});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late final GameController controller = GameController(widget.gameId);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameController, GameControllerState>(
      bloc: controller,
      builder: (context, state) {
        if (state.loading) {
          return const LichessScaffold(
            body: SafeArea(
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }
        if (state.hasError) {
          return LichessScaffold(
            body: SafeArea(
              child: Center(child: Text('Error loading game: ${state.error}')),
            ),
          );
        }
        int orientation = state.board!.board.orientation;
        final game = state.game!;
        final s = state.board!;
        return LichessScaffold(
          body: SafeArea(
            child: Column(
              children: [
                Text(
                  orientation == Squares.white
                      ? game.black.name
                      : game.white.name,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: BoardController(
                    state: s.board,
                    playState: s.state,
                    pieceSet: PieceSet.merida(),
                    theme: BoardTheme.blueGrey,
                    moves: s.moves,
                    onMove: controller.makeMove,
                    onPremove: controller.makeMove,
                  ),
                ),
                Text(orientation == Squares.white
                    ? game.white.name
                    : game.black.name),
              ],
            ),
          ),
        );
      },
    );
  }
}
