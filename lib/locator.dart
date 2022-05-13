import 'package:get_it/get_it.dart';
import 'package:lichess_prototype/controllers/auth_controller.dart';
import 'package:lichess_prototype/services/api/api_client.dart';
import 'package:lichess_prototype/storage/secure_store.dart';

GetIt getIt = GetIt.I;

ApiClient api() => getIt.get<ApiClient>();
AuthController auth() => getIt.get<AuthController>();
SecureStore secure() => getIt.get<SecureStore>();

void setUpServiceLocator() {
  getIt.registerSingleton<ApiClient>(ApiClient());
  getIt.registerSingleton<AuthController>(AuthController());
  getIt.registerSingleton<SecureStore>(SecureStore());
}
