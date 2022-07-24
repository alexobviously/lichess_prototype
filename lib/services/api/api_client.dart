import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lichess_prototype/utils/serialisation_utils.dart';
import 'package:rest_client/rest_client.dart' as rc;

import 'package:lichess_prototype/model/model.dart';
import 'package:lichess_prototype/locator.dart';
import 'package:rxdart/subjects.dart';

part 'api_games.dart';
part 'api_response.dart';

typedef Unwrapper<T> = T Function(Map<String, dynamic> data);
typedef MapBehaviorSubject = BehaviorSubject<Map<String, dynamic>>;
typedef EventSubject = BehaviorSubject<Event>;
typedef MapStream = Stream<Map<String, dynamic>>;
typedef EventStream = Stream<Event>;

class ApiClient {
  static const host = 'https://lichess.org';

  List<http.Client> _httpClients = [];
  List<StreamSubscription> _streamSubs = [];

  //

  Future<Result<User>> getAccount() =>
      getAndUnwrap('/api/account', unwrapper: User.fromJson, needAuth: true);

  Future<Result<User>> getProfile(String username) =>
      getAndUnwrap('/api/user/$username', unwrapper: User.fromJson);

  Future<Result<EventStream>> getEventStream() => getStreamAndUnwrap(
        '/api/stream/event',
        needAuth: true,
        unwrapper: Event.fromJson,
      );

  Future<Result<EventStream>> getTvFeed() => getStreamAndUnwrap(
        '/api/tv/feed',
        unwrapper: Event.fromJson,
      );

  Future<Result<EventStream>> getBoardStream(String gameId) =>
      getStreamAndUnwrap(
        '/api/board/game/stream/$gameId',
        needAuth: true,
        unwrapper: Event.fromJson,
      );

  //

  void closeStreams() {
    for (final c in _httpClients) {
      c.close();
    }
    for (final s in _streamSubs) {
      s.cancel();
    }
    _httpClients = [];
    _streamSubs = [];
  }

  Future<ApiResponse> getStream(
    String path, {
    bool needAuth = false,
  }) async {
    Map<String, String> headers = {};
    if (needAuth) {
      String? token = await secure().getToken();
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      } else {
        return ApiResponse.error(401);
      }
    }

    final req = http.Request('get', Uri.parse('$host$path'));
    req.headers.addAll(headers);
    final client = http.Client();
    final res = await client.send(req);
    if (res.statusCode != 200) {
      return ApiResponse.error(res.statusCode);
    }
    MapBehaviorSubject subject = BehaviorSubject();
    // length > 1 filters out the [10] keepalive messages
    _streamSubs.add(res.stream
        .where((e) => e.length > 1)
        .map(_decodeBytes)
        .listen(subject.add));
    return ApiResponse.stream(stream: subject);
  }

  Result<Stream<T>> unwrapStream<T>(
    ApiResponse response,
    Unwrapper<T> unwrapper,
  ) {
    // todo: maybe more error handling?
    if (!response.ok || response.stream == null) {
      return Result.error(response.error ?? response.status.toString());
    }
    return Result.ok(response.stream!.map(unwrapper));
  }

  Future<Result<Stream<T>>> getStreamAndUnwrap<T>(String path,
          {required Unwrapper<T> unwrapper, bool needAuth = false}) async =>
      unwrapStream(await getStream(path, needAuth: needAuth), unwrapper);

  Map<String, dynamic> _decodeBytes(List<int> bytes) =>
      jsonDecode(String.fromCharCodes(bytes));

  Future<ApiResponse> get(
    String path, {
    bool needAuth = false,
  }) async {
    try {
      Map<String, String> headers = {};
      if (needAuth) {
        String? token = await secure().getToken();
        if (token != null) {
          headers['Authorization'] = 'Bearer $token';
        } else {
          return ApiResponse.error(401);
        }
      }

      final req = rc.Request(
        url: '$host$path',
        method: rc.RequestMethod.get,
        headers: headers,
      );
      final resp = await rc.Client().execute(request: req);
      if (resp.statusCode != 200) return ApiResponse.error(resp.statusCode);
      return ApiResponse.ok(data: resp.body);
    } catch (e, s) {
      print('ApiClient.get($path), error $e\n$s');
      return ApiResponse.error(500);
    }
  }

  Future<ApiResponse> post(
    String path, {
    bool needAuth = false,
    Map<String, dynamic>? body,
  }) async {
    try {
      Map<String, String> headers = {};
      if (needAuth) {
        String? token = await secure().getToken();
        if (token != null) {
          headers['Authorization'] = 'Bearer $token';
        } else {
          return ApiResponse.error(401);
        }
      }

      final req = rc.Request(
        url: '$host$path',
        method: rc.RequestMethod.post,
        headers: headers,
        body: body == null ? null : jsonEncode(body),
      );
      final resp = await rc.Client().execute(request: req);
      if (resp.statusCode != 200) return ApiResponse.error(resp.statusCode);
      return ApiResponse.ok(data: resp.body);
    } catch (e, s) {
      print('ApiClient.post($path), error $e\n$s');
      return ApiResponse.error(500);
    }
  }

  Result<T> unwrapResponse<T>(ApiResponse response, Unwrapper<T> unwrapper) {
    if (!response.ok) {
      return Result.error(response.error ?? response.status.toString());
    }
    return Result.ok(
      unwrapper(response.data),
    );
  }

  Future<Result<T>> getAndUnwrap<T>(
    String path, {
    required Unwrapper<T> unwrapper,
    bool needAuth = false,
  }) async =>
      unwrapResponse(await get(path, needAuth: needAuth), unwrapper);

  Future<Result<T>> postAndUnwrap<T>(
    String path, {
    required Unwrapper<T> unwrapper,
    bool needAuth = false,
    Map<String, dynamic>? body,
  }) async =>
      unwrapResponse(
          await post(path, needAuth: needAuth, body: body), unwrapper);

  List<T> unwrapList<T>(List<Map<String, dynamic>> data, Unwrapper unwrapper) =>
      data.map<T>((e) => unwrapper(e)).toList();
}
