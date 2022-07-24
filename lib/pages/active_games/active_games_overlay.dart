import 'package:flutter/material.dart';
import 'package:lichess_prototype/pages/active_games/active_games_page.dart';

class ActiveGamesOverlay extends ModalRoute<void> {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

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

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, -0.5),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }
}

void showActiveGamesOverlay(BuildContext context) {
  Navigator.of(context).push(ActiveGamesOverlay());
}
