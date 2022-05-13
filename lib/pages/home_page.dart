import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_prototype/controllers/auth_controller.dart';
import 'package:lichess_prototype/locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Hi'),
            TextButton(
              onPressed: () => auth().login(),
              child: const Text('login'),
            ),
            const SizedBox(height: 30),
            BlocBuilder<AuthController, AuthState>(
              builder: (context, state) {
                if (state.loggedIn) {
                  return Text('Logged in as ${state.user!.username}');
                } else {
                  return Text('Not logged in');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
