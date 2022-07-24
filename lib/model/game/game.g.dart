// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GameCWProxy {
  Game black(GamePlayer black);

  Game clock(ClockConfig? clock);

  Game createdAt(int createdAt);

  Game id(String id);

  Game initialFen(String initialFen);

  Game rated(bool rated);

  Game state(GameState state);

  Game white(GamePlayer white);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Game(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Game(...).copyWith(id: 12, name: "My name")
  /// ````
  Game call({
    GamePlayer? black,
    ClockConfig? clock,
    int? createdAt,
    String? id,
    String? initialFen,
    bool? rated,
    GameState? state,
    GamePlayer? white,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGame.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGame.copyWith.fieldName(...)`
class _$GameCWProxyImpl implements _$GameCWProxy {
  final Game _value;

  const _$GameCWProxyImpl(this._value);

  @override
  Game black(GamePlayer black) => this(black: black);

  @override
  Game clock(ClockConfig? clock) => this(clock: clock);

  @override
  Game createdAt(int createdAt) => this(createdAt: createdAt);

  @override
  Game id(String id) => this(id: id);

  @override
  Game initialFen(String initialFen) => this(initialFen: initialFen);

  @override
  Game rated(bool rated) => this(rated: rated);

  @override
  Game state(GameState state) => this(state: state);

  @override
  Game white(GamePlayer white) => this(white: white);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Game(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Game(...).copyWith(id: 12, name: "My name")
  /// ````
  Game call({
    Object? black = const $CopyWithPlaceholder(),
    Object? clock = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? initialFen = const $CopyWithPlaceholder(),
    Object? rated = const $CopyWithPlaceholder(),
    Object? state = const $CopyWithPlaceholder(),
    Object? white = const $CopyWithPlaceholder(),
  }) {
    return Game(
      black: black == const $CopyWithPlaceholder() || black == null
          ? _value.black
          // ignore: cast_nullable_to_non_nullable
          : black as GamePlayer,
      clock: clock == const $CopyWithPlaceholder()
          ? _value.clock
          // ignore: cast_nullable_to_non_nullable
          : clock as ClockConfig?,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as int,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      initialFen:
          initialFen == const $CopyWithPlaceholder() || initialFen == null
              ? _value.initialFen
              // ignore: cast_nullable_to_non_nullable
              : initialFen as String,
      rated: rated == const $CopyWithPlaceholder() || rated == null
          ? _value.rated
          // ignore: cast_nullable_to_non_nullable
          : rated as bool,
      state: state == const $CopyWithPlaceholder() || state == null
          ? _value.state
          // ignore: cast_nullable_to_non_nullable
          : state as GameState,
      white: white == const $CopyWithPlaceholder() || white == null
          ? _value.white
          // ignore: cast_nullable_to_non_nullable
          : white as GamePlayer,
    );
  }
}

extension $GameCopyWith on Game {
  /// Returns a callable class that can be used as follows: `instanceOfclass Game.name.copyWith(...)` or like so:`instanceOfclass Game.name.copyWith.fieldName(...)`.
  _$GameCWProxy get copyWith => _$GameCWProxyImpl(this);
}

abstract class _$GameStateCWProxy {
  GameState binc(int binc);

  GameState btime(int btime);

  GameState moves(String moves);

  GameState status(String status);

  GameState winc(int winc);

  GameState wtime(int wtime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GameState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GameState(...).copyWith(id: 12, name: "My name")
  /// ````
  GameState call({
    int? binc,
    int? btime,
    String? moves,
    String? status,
    int? winc,
    int? wtime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGameState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGameState.copyWith.fieldName(...)`
class _$GameStateCWProxyImpl implements _$GameStateCWProxy {
  final GameState _value;

  const _$GameStateCWProxyImpl(this._value);

  @override
  GameState binc(int binc) => this(binc: binc);

  @override
  GameState btime(int btime) => this(btime: btime);

  @override
  GameState moves(String moves) => this(moves: moves);

  @override
  GameState status(String status) => this(status: status);

  @override
  GameState winc(int winc) => this(winc: winc);

  @override
  GameState wtime(int wtime) => this(wtime: wtime);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GameState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GameState(...).copyWith(id: 12, name: "My name")
  /// ````
  GameState call({
    Object? binc = const $CopyWithPlaceholder(),
    Object? btime = const $CopyWithPlaceholder(),
    Object? moves = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? winc = const $CopyWithPlaceholder(),
    Object? wtime = const $CopyWithPlaceholder(),
  }) {
    return GameState(
      binc: binc == const $CopyWithPlaceholder() || binc == null
          ? _value.binc
          // ignore: cast_nullable_to_non_nullable
          : binc as int,
      btime: btime == const $CopyWithPlaceholder() || btime == null
          ? _value.btime
          // ignore: cast_nullable_to_non_nullable
          : btime as int,
      moves: moves == const $CopyWithPlaceholder() || moves == null
          ? _value.moves
          // ignore: cast_nullable_to_non_nullable
          : moves as String,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      winc: winc == const $CopyWithPlaceholder() || winc == null
          ? _value.winc
          // ignore: cast_nullable_to_non_nullable
          : winc as int,
      wtime: wtime == const $CopyWithPlaceholder() || wtime == null
          ? _value.wtime
          // ignore: cast_nullable_to_non_nullable
          : wtime as int,
    );
  }
}

extension $GameStateCopyWith on GameState {
  /// Returns a callable class that can be used as follows: `instanceOfclass GameState.name.copyWith(...)` or like so:`instanceOfclass GameState.name.copyWith.fieldName(...)`.
  _$GameStateCWProxy get copyWith => _$GameStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      id: json['id'] as String,
      rated: json['rated'] as bool,
      clock: json['clock'] == null
          ? null
          : ClockConfig.fromJson(json['clock'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as int,
      white: GamePlayer.import(json['white'] as Map<String, dynamic>),
      black: GamePlayer.import(json['black'] as Map<String, dynamic>),
      initialFen: json['initialFen'] as String,
      state: GameState.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'id': instance.id,
      'rated': instance.rated,
      'clock': instance.clock?.toJson(),
      'createdAt': instance.createdAt,
      'white': GamePlayer.export(instance.white),
      'black': GamePlayer.export(instance.black),
      'initialFen': instance.initialFen,
      'state': instance.state.toJson(),
    };

GameState _$GameStateFromJson(Map<String, dynamic> json) => GameState(
      moves: json['moves'] as String,
      wtime: json['wtime'] as int,
      btime: json['btime'] as int,
      winc: json['winc'] as int,
      binc: json['binc'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$GameStateToJson(GameState instance) => <String, dynamic>{
      'moves': instance.moves,
      'wtime': instance.wtime,
      'btime': instance.btime,
      'winc': instance.winc,
      'binc': instance.binc,
      'status': instance.status,
    };
