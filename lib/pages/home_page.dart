import 'package:bishop/bishop.dart' as bp;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_prototype/controllers/auth_controller.dart';
import 'package:lichess_prototype/controllers/tv_stream_controller.dart';
import 'package:lichess_prototype/locator.dart';
import 'package:lichess_prototype/model/model.dart';
import 'package:lichess_prototype/ui/scaffold.dart';
import 'package:squares/squares.dart';
import 'package:square_bishop/square_bishop.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LichessScaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              BlocBuilder<TvStreamController, TvStreamState?>(
                builder: (context, state) {
                  if (state == null) return Container();
                  // return Text(state.fen);
                  final g = bp.Game(
                    variant: bp.Variant.standard(),
                    fen: state.fen,
                  );
                  final sqState = g.squaresState(bp.Bishop.white);
                  BoardState boardState = sqState.board;
                  if (state.lastMove != null) {
                    final move =
                        sqState.size.moveFromAlgebraic(state.lastMove!);
                    boardState = boardState.copyWith(
                      lastFrom: move.from,
                      lastTo: move.to,
                    );
                  }

                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(border: Border.all()),
                    child: Column(
                      children: [
                        _playerInfo(state.players.last),
                        Board(
                          pieceSet: PieceSet.merida(),
                          theme: BoardTheme.blueGrey,
                          state: boardState,
                        ),
                        _playerInfo(state.players.first),
                        const SizedBox(height: 10),
                        Text(state.fen),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _playerInfo(Player player) {
    return Row(
      children: [
        Text(
          player.name,
          style: const TextStyle(fontSize: 20),
        ),
        if (player.title != null)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              player.title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
        const Spacer(),
        Text(player.rating.toString()),
      ],
    );
  }
}
