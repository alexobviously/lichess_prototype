import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lichess_prototype/app/bloc_provider_group.dart';
import 'package:lichess_prototype/app/router.dart';

class LichessApp extends StatelessWidget {
  LichessApp({Key? key}) : super(key: key);

  final _appKey = GlobalKey();
  final _router = buildRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProviderGroup(
      child: MaterialApp.router(
        key: _appKey,
        title: 'Lichess',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(),
        ),
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      ),
    );
  }
}
