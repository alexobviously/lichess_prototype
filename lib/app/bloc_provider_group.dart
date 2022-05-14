import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_prototype/controllers/auth_controller.dart';
import 'package:lichess_prototype/controllers/tv_stream_controller.dart';
import 'package:lichess_prototype/locator.dart';

class BlocProviderGroup extends StatelessWidget {
  final Widget child;
  const BlocProviderGroup({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthController>(
          create: (_) => auth(),
        ),
        BlocProvider<TvStreamController>(
          create: (_) => TvStreamController(),
        ),
      ],
      child: child,
    );
  }
}
