import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStoreKeys {
  static const token = 'token';
}

class SecureStore {
  final _secureStorage = const FlutterSecureStorage();

  Future<String?> getToken() async =>
      _secureStorage.read(key: SecureStoreKeys.token);

  Future<void> setToken(String token) async =>
      _secureStorage.write(key: SecureStoreKeys.token, value: token);
}
