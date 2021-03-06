part of 'api_client.dart';

extension GamesApi on ApiClient {
  Future<Result<List<UserGame>>> getActiveGames() => getAndUnwrap(
        '/api/account/playing',
        needAuth: true,
        unwrapper: unwrapActiveGames,
      );

  List<UserGame> unwrapActiveGames(Map<String, dynamic> data) =>
      unwrapList<UserGame>(
          coerceListMSD(data['nowPlaying']), (data) => UserGame.fromJson(data));

  Future<Result<bool>> makeMove(String gameId, String move) => postAndUnwrap(
        '/api/board/game/$gameId/move/$move',
        needAuth: true,
        unwrapper: (data) => data['ok'],
      );
}
