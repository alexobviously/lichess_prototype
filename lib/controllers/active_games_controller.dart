import 'package:bloc/bloc.dart';
import 'package:lichess_prototype/controllers/auth_controller.dart';
import 'package:lichess_prototype/locator.dart';
import 'package:lichess_prototype/model/model.dart';
import 'package:lichess_prototype/services/api/api_client.dart';

class ActiveGamesController extends Cubit<List<UserGame>> {
  ActiveGamesController() : super([]) {
    init();
  }

  void init() {
    auth().stream.listen(_handleAuthState);
    _handleAuthState(auth().state);
  }

  void _handleAuthState(AuthState authState) {
    if (authState.loggedIn) {
      getActiveGames();
    } else {
      clear();
    }
  }

  void clear() => emit([]);

  Future<void> getActiveGames() async {
    final result = await api().getActiveGames();
    if (result.ok) {
      emit(result.object!);
    }
  }
}
