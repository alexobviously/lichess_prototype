// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_stream_controller.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TvStreamStateCWProxy {
  TvStreamState fen(String fen);

  TvStreamState id(String id);

  TvStreamState lastMove(String? lastMove);

  TvStreamState orientation(String orientation);

  TvStreamState players(List<Player> players);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TvStreamState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TvStreamState(...).copyWith(id: 12, name: "My name")
  /// ````
  TvStreamState call({
    String? fen,
    String? id,
    String? lastMove,
    String? orientation,
    List<Player>? players,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTvStreamState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTvStreamState.copyWith.fieldName(...)`
class _$TvStreamStateCWProxyImpl implements _$TvStreamStateCWProxy {
  final TvStreamState _value;

  const _$TvStreamStateCWProxyImpl(this._value);

  @override
  TvStreamState fen(String fen) => this(fen: fen);

  @override
  TvStreamState id(String id) => this(id: id);

  @override
  TvStreamState lastMove(String? lastMove) => this(lastMove: lastMove);

  @override
  TvStreamState orientation(String orientation) =>
      this(orientation: orientation);

  @override
  TvStreamState players(List<Player> players) => this(players: players);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TvStreamState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TvStreamState(...).copyWith(id: 12, name: "My name")
  /// ````
  TvStreamState call({
    Object? fen = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? lastMove = const $CopyWithPlaceholder(),
    Object? orientation = const $CopyWithPlaceholder(),
    Object? players = const $CopyWithPlaceholder(),
  }) {
    return TvStreamState(
      fen: fen == const $CopyWithPlaceholder() || fen == null
          ? _value.fen
          // ignore: cast_nullable_to_non_nullable
          : fen as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      lastMove: lastMove == const $CopyWithPlaceholder()
          ? _value.lastMove
          // ignore: cast_nullable_to_non_nullable
          : lastMove as String?,
      orientation:
          orientation == const $CopyWithPlaceholder() || orientation == null
              ? _value.orientation
              // ignore: cast_nullable_to_non_nullable
              : orientation as String,
      players: players == const $CopyWithPlaceholder() || players == null
          ? _value.players
          // ignore: cast_nullable_to_non_nullable
          : players as List<Player>,
    );
  }
}

extension $TvStreamStateCopyWith on TvStreamState {
  /// Returns a callable class that can be used as follows: `instanceOfclass TvStreamState.name.copyWith(...)` or like so:`instanceOfclass TvStreamState.name.copyWith.fieldName(...)`.
  _$TvStreamStateCWProxy get copyWith => _$TvStreamStateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvStreamState _$TvStreamStateFromJson(Map<String, dynamic> json) =>
    TvStreamState(
      id: json['id'] as String,
      orientation: json['orientation'] as String,
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      fen: json['fen'] as String,
      lastMove: json['lm'] as String?,
    );

Map<String, dynamic> _$TvStreamStateToJson(TvStreamState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orientation': instance.orientation,
      'players': instance.players,
      'fen': instance.fen,
      'lm': instance.lastMove,
    };
