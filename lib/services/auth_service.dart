import 'dart:developer' as developer;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const lichessHost = 'https://lichess.org';
const lichessClientId = 'lichess_prototype';
const redirectUri = 'com.example.lichess_prototype://login-callback';
const accountUrl = '$lichessHost/api/account';

const serviceConfig = AuthorizationServiceConfiguration(
  authorizationEndpoint: '$lichessHost/oauth',
  tokenEndpoint: '$lichessHost/api/token',
);

const _storage = FlutterSecureStorage();

class Auth {
  final _appAuth = const FlutterAppAuth();

  Me? me;

  Future<void> init() async {
    try {
      final token = await _storage.read(key: lichessClientId);
      if (token != null) {
        await _getMyAccount();
      }
    } on Exception catch (e, s) {
      developer.log('Error on auth init: $e, $s');
    }
  }

  Future<void> login() async {
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
        developer.log('Got accessToken ${result.accessToken}');
        await _storage.write(key: lichessClientId, value: result.accessToken);
        await _getMyAccount();
      } else {
        throw Exception('Could not login');
      }
    } on Exception catch (e, s) {
      developer.log('Error on login: $e, $s');
    }
  }

  Future<void> logout() async {
    if (me != null) {
      final authHttp = AuthClient(http.Client());
      try {
        await authHttp.delete(Uri.parse('$lichessHost/api/token'));
        await _storage.delete(key: lichessClientId);
        me = null;
      } finally {
        authHttp.close();
      }
    }
  }

  Future<void> _getMyAccount() async {
    final authHttp = AuthClient(http.Client());
    try {
      final uri = Uri.parse('$lichessHost/api/account');
      developer.log('Calling: ' + uri.toString());
      final response = await authHttp.get(uri);

      developer.log('Response code: ' + response.statusCode.toString());
      if (response.statusCode == 200) {
        me = Me.fromJson(jsonDecode(response.body));
      }
    } finally {
      authHttp.close();
    }
  }
}

class AuthClient extends http.BaseClient {
  final http.Client _inner;

  AuthClient(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final token = await _storage.read(key: lichessClientId);
    request.headers['Authorization'] = 'Bearer ' + (token ?? '');
    developer
        .log('http authorization header: ' + request.headers['Authorization']!);
    return _inner.send(request);
  }
}

class Me {
  final String id;
  final String username;

  const Me({
    required this.id,
    required this.username,
  });

  factory Me.fromJson(Map<String, dynamic> json) {
    return Me(
      id: json['id'],
      username: json['username'],
    );
  }
}
