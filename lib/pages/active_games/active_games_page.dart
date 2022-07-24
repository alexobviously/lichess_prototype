import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_prototype/controllers/active_games_controller.dart';
import 'package:lichess_prototype/model/game/game.dart';
import 'package:square_bishop/square_bishop.dart';
import 'package:squares/squares.dart';
import 'package:bishop/bishop.dart' as bp;

class ActiveGamesPage extends StatefulWidget {
  const ActiveGamesPage({super.key});

  @override
  State<ActiveGamesPage> createState() => _ActiveGamesPageState();
}

class _ActiveGamesPageState extends State<ActiveGamesPage> {
  late final PageController _pageController = PageController(
    viewportFraction: 0.95,
    keepPage: true,
  )..addListener(_onPageChanged);

  double _page = 0.0;

  void _onPageChanged() => setState(() => _page = _pageController.page ?? 0.0);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: BlocBuilder<ActiveGamesController, List<UserGame>>(
            builder: (context, games) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotsIndicator(
                    dotsCount: games.length,
                    position: _page,
                    decorator: const DotsDecorator(activeColor: Colors.white),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: games.length,
                      itemBuilder: (context, i) => _gameCard(games[i]),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _gameCard(UserGame game) {
    final g = bp.Game(
      variant: bp.Variant.standard(),
      fen: game.fen,
    );
    final sqState = g.squaresState(bp.Bishop.white);
    BoardState boardState = sqState.board;
    if (game.lastMove.isNotEmpty) {
      final move = sqState.size.moveFromAlgebraic(game.lastMove);
      boardState = boardState.copyWith(
        lastFrom: move.from,
        lastTo: move.to,
      );
    }
    final subtextStyle = TextStyle(
      fontSize: 14,
      color: Colors.orange.shade300,
      fontWeight: FontWeight.w500,
    );
    return Card(
      child: Column(
        children: [
          IgnorePointer(
            child: Board(
              pieceSet: PieceSet.merida(),
              theme: BoardTheme.blueGrey,
              state: boardState,
              animatePieces: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              game.opponent.username.toUpperCase(),
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            'STANDARD',
            style: subtextStyle,
          ),
          const SizedBox(height: 2),
          Text(
            game.isMyTurn ? 'YOUR TURN' : 'WAITING FOR OPPONENT',
            style: subtextStyle,
          ),
        ],
      ),
    );
  }
}
