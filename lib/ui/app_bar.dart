import 'package:flutter/material.dart';

class LichessAppBar extends StatelessWidget implements PreferredSizeWidget {
  LichessAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('lichess.org'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
