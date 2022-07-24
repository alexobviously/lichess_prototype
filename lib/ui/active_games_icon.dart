import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:lichess_prototype/pages/active_games/active_games_overlay.dart';
import 'package:squares/squares.dart';

class ActiveGamesIcon extends StatelessWidget {
  final int numGames;
  final double size;
  const ActiveGamesIcon({
    super.key,
    required this.numGames,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: numGames > 0 ? () => showActiveGamesOverlay(context) : null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Badge(
          showBadge: numGames > 0,
          badgeContent: Text('$numGames'),
          badgeColor: Colors.orange,
          child: SizedBox(
            width: size,
            height: size,
            child: BoardBackground(
              size: const BoardSize(4, 4),
            ),
          ),
        ),
      ),
    );
  }
}
