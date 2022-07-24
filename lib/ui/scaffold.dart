import 'package:flutter/material.dart';
import 'package:lichess_prototype/ui/app_bar.dart';
import 'package:lichess_prototype/ui/drawer.dart';

class LichessScaffold extends StatelessWidget {
  final Widget body;
  final Widget? header;
  const LichessScaffold({
    Key? key,
    required this.body,
    this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LichessAppBar(header: header),
      body: body,
      drawer: const LichessDrawer(),
    );
  }
}
