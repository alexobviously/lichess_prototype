import 'package:flutter/material.dart';
import 'package:lichess_prototype/pages/active_games/active_games_page.dart';

class ActiveGamesOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => 'Active Games';

  @override
  bool get maintainState => true;
  ActiveGamesOverlay();

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return const ActiveGamesPage();
  }
}

void showActiveGamesOverlay(BuildContext context) {
  Navigator.of(context).push(ActiveGamesOverlay());
}
