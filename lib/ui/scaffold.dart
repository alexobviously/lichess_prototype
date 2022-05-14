import 'package:flutter/material.dart';
import 'package:lichess_prototype/ui/app_bar.dart';
import 'package:lichess_prototype/ui/drawer.dart';

class LichessScaffold extends StatelessWidget {
  final Widget body;
  const LichessScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LichessAppBar(),
      body: body,
      drawer: const LichessDrawer(),
    );
  }
}
