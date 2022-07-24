// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GameCWProxy {
  Game fen(String fen);

  Game fullId(String? fullId);

  Game gameId(String gameId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Game(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Game(...).copyWith(id: 12, name: "My name")
  /// ````
  Game call({
    String? fen,
    String? fullId,
    String? gameId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGame.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGame.copyWith.fieldName(...)`
class _$GameCWProxyImpl implements _$GameCWProxy {
  final Game _value;

  const _$GameCWProxyImpl(this._value);

  @override
  Game fen(String fen) => this(fen: fen);

  @override
  Game fullId(String? fullId) => this(fullId: fullId);

  @override
  Game gameId(String gameId) => this(gameId: gameId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Game(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Game(...).copyWith(id: 12, name: "My name")
  /// ````
  Game call({
    Object? fen = const $CopyWithPlaceholder(),
    Object? fullId = const $CopyWithPlaceholder(),
    Object? gameId = const $CopyWithPlaceholder(),
  }) {
    return Game(
      fen: fen == const $CopyWithPlaceholder() || fen == null
          ? _value.fen
          // ignore: cast_nullable_to_non_nullable
          : fen as String,
      fullId: fullId == const $CopyWithPlaceholder()
          ? _value.fullId
          // ignore: cast_nullable_to_non_nullable
          : fullId as String?,
      gameId: gameId == const $CopyWithPlaceholder() || gameId == null
          ? _value.gameId
          // ignore: cast_nullable_to_non_nullable
          : gameId as String,
    );
  }
}

extension $GameCopyWith on Game {
  /// Returns a callable class that can be used as follows: `instanceOfclass Game.name.copyWith(...)` or like so:`instanceOfclass Game.name.copyWith.fieldName(...)`.
  _$GameCWProxy get copyWith => _$GameCWProxyImpl(this);
}

abstract class _$UserGameCWProxy {
  UserGame color(String color);

  UserGame fen(String fen);

  UserGame fullId(String? fullId);

  UserGame gameId(String gameId);

  UserGame hasMoved(bool hasMoved);

  UserGame isMyTurn(bool isMyTurn);

  UserGame lastMove(String lastMove);

  UserGame opponent(Opponent opponent);

  UserGame rated(bool rated);

  UserGame source(String source);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserGame(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserGame(...).copyWith(id: 12, name: "My name")
  /// ````
  UserGame call({
    String? color,
    String? fen,
    String? fullId,
    String? gameId,
    bool? hasMoved,
    bool? isMyTurn,
    String? lastMove,
    Opponent? opponent,
    bool? rated,
    String? source,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserGame.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserGame.copyWith.fieldName(...)`
class _$UserGameCWProxyImpl implements _$UserGameCWProxy {
  final UserGame _value;

  const _$UserGameCWProxyImpl(this._value);

  @override
  UserGame color(String color) => this(color: color);

  @override
  UserGame fen(String fen) => this(fen: fen);

  @override
  UserGame fullId(String? fullId) => this(fullId: fullId);

  @override
  UserGame gameId(String gameId) => this(gameId: gameId);

  @override
  UserGame hasMoved(bool hasMoved) => this(hasMoved: hasMoved);

  @override
  UserGame isMyTurn(bool isMyTurn) => this(isMyTurn: isMyTurn);

  @override
  UserGame lastMove(String lastMove) => this(lastMove: lastMove);

  @override
  UserGame opponent(Opponent opponent) => this(opponent: opponent);

  @override
  UserGame rated(bool rated) => this(rated: rated);

  @override
  UserGame source(String source) => this(source: source);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserGame(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserGame(...).copyWith(id: 12, name: "My name")
  /// ````
  UserGame call({
    Object? color = const $CopyWithPlaceholder(),
    Object? fen = const $CopyWithPlaceholder(),
    Object? fullId = const $CopyWithPlaceholder(),
    Object? gameId = const $CopyWithPlaceholder(),
    Object? hasMoved = const $CopyWithPlaceholder(),
    Object? isMyTurn = const $CopyWithPlaceholder(),
    Object? lastMove = const $CopyWithPlaceholder(),
    Object? opponent = const $CopyWithPlaceholder(),
    Object? rated = const $CopyWithPlaceholder(),
    Object? source = const $CopyWithPlaceholder(),
  }) {
    return UserGame(
      color: color == const $CopyWithPlaceholder() || color == null
          ? _value.color
          // ignore: cast_nullable_to_non_nullable
          : color as String,
      fen: fen == const $CopyWithPlaceholder() || fen == null
          ? _value.fen
          // ignore: cast_nullable_to_non_nullable
          : fen as String,
      fullId: fullId == const $CopyWithPlaceholder()
          ? _value.fullId
          // ignore: cast_nullable_to_non_nullable
          : fullId as String?,
      gameId: gameId == const $CopyWithPlaceholder() || gameId == null
          ? _value.gameId
          // ignore: cast_nullable_to_non_nullable
          : gameId as String,
      hasMoved: hasMoved == const $CopyWithPlaceholder() || hasMoved == null
          ? _value.hasMoved
          // ignore: cast_nullable_to_non_nullable
          : hasMoved as bool,
      isMyTurn: isMyTurn == const $CopyWithPlaceholder() || isMyTurn == null
          ? _value.isMyTurn
          // ignore: cast_nullable_to_non_nullable
          : isMyTurn as bool,
      lastMove: lastMove == const $CopyWithPlaceholder() || lastMove == null
          ? _value.lastMove
          // ignore: cast_nullable_to_non_nullable
          : lastMove as String,
      opponent: opponent == const $CopyWithPlaceholder() || opponent == null
          ? _value.opponent
          // ignore: cast_nullable_to_non_nullable
          : opponent as Opponent,
      rated: rated == const $CopyWithPlaceholder() || rated == null
          ? _value.rated
          // ignore: cast_nullable_to_non_nullable
          : rated as bool,
      source: source == const $CopyWithPlaceholder() || source == null
          ? _value.source
          // ignore: cast_nullable_to_non_nullable
          : source as String,
    );
  }
}

extension $UserGameCopyWith on UserGame {
  /// Returns a callable class that can be used as follows: `instanceOfclass UserGame extends Game.name.copyWith(...)` or like so:`instanceOfclass UserGame extends Game.name.copyWith.fieldName(...)`.
  _$UserGameCWProxy get copyWith => _$UserGameCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      gameId: json['gameId'] as String,
      fullId: json['fullId'] as String?,
      fen: json['fen'] as String,
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'gameId': instance.gameId,
      'fullId': instance.fullId,
      'fen': instance.fen,
    };

Opponent _$OpponentFromJson(Map<String, dynamic> json) => Opponent(
      id: json['id'] as String?,
      username: json['username'] as String,
      ai: json['ai'] as num?,
      rating: json['rating'] as num?,
    );

Map<String, dynamic> _$OpponentToJson(Opponent instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'ai': instance.ai,
      'rating': instance.rating,
    };

UserGame _$UserGameFromJson(Map<String, dynamic> json) => UserGame(
      gameId: json['gameId'] as String,
      fullId: json['fullId'] as String?,
      fen: json['fen'] as String,
      color: json['color'] as String,
      lastMove: json['lastMove'] as String,
      source: json['source'] as String,
      rated: json['rated'] as bool,
      hasMoved: json['hasMoved'] as bool,
      isMyTurn: json['isMyTurn'] as bool,
      opponent: Opponent.fromJson(json['opponent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserGameToJson(UserGame instance) => <String, dynamic>{
      'gameId': instance.gameId,
      'fullId': instance.fullId,
      'fen': instance.fen,
      'color': instance.color,
      'lastMove': instance.lastMove,
      'source': instance.source,
      'rated': instance.rated,
      'hasMoved': instance.hasMoved,
      'isMyTurn': instance.isMyTurn,
      'opponent': instance.opponent.toJson(),
    };
