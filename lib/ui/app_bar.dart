import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_prototype/controllers/active_games_controller.dart';
import 'package:lichess_prototype/model/model.dart';
import 'package:lichess_prototype/ui/active_games_icon.dart';

class LichessAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? header;
  const LichessAppBar({super.key, this.header});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActiveGamesController, List<UserGame>>(
        builder: (context, activeGames) {
      return AppBar(
        title: header ?? const Text('lichess.org'),
        actions: [
          ActiveGamesIcon(
            numGames: activeGames.length,
            size: 32,
          ),
        ],
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
