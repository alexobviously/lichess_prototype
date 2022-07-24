import 'package:flutter/material.dart';

class LichessAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? header;
  const LichessAppBar({super.key, this.header});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: header ?? const Text('lichess.org'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
