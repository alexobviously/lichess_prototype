import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:lichess_prototype/locator.dart';

import 'package:lichess_prototype/model/model.dart';

part 'auth_controller.g.dart';

const lichessHost = 'https://lichess.org';
const lichessClientId = 'lichess_prototype';
const redirectUri = 'org.lichess.prototype://login-callback';
const accountUrl = '$lichessHost/api/account';

const serviceConfig = AuthorizationServiceConfiguration(
  authorizationEndpoint: '$lichessHost/oauth',
  tokenEndpoint: '$lichessHost/api/token',
);

class AuthController extends Cubit<AuthState> {
  final _appAuth = const FlutterAppAuth();

  AuthController() : super(AuthState.initial()) {
    init();
  }

  void init() {}

  Future<void> login() async {
    emit(state.copyWith(working: true));
    try {
      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          lichessClientId,
          redirectUri,
          serviceConfiguration: serviceConfig,
          scopes: [
            'email:read',
            'board:play',
            'preference:read',
            'challenge:read',
            'challenge:write',
            'puzzle:read',
          ],
        ),
      );
      if (result != null) {
        print('Got accessToken ${result.accessToken}');
        await secure().setToken(result.accessToken!);
        // await _storage.write(key: lichessClientId, value: result.accessToken);
        await getAccount();
        emit(state.copyWith(working: false));
        final r = await api().getEventStream();
        if (r.ok) {
          r.object!.listen((e) {
            print(':: event: $e (${e.type})');
          });
        }
      } else {
        throw Exception('Could not login');
      }
    } catch (e, s) {
      emit(state.copyWith(working: false));
      print('Error on login: $e, $s');
    }
  }

  Future<bool> getAccount() async {
    final token = await secure().getToken();
    if (token == null) return false;
    Result<User> user = await api().getProfile();
    if (user.ok) {
      emit(state.copyWith(user: user.object!));
      return true;
    } else {
      return false;
    }
  }
}

@CopyWith()
class AuthState {
  final bool working;
  final User? user;

  bool get loggedIn => user != null;

  const AuthState({this.working = false, this.user});
  factory AuthState.initial() => const AuthState();
}
