import 'package:flutter/material.dart';
import 'package:lichess_prototype/app/bloc_provider_group.dart';
import 'package:lichess_prototype/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProviderGroup(
      child: MaterialApp(
        title: 'Lichess',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
