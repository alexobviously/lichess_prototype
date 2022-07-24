// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GameControllerStateCWProxy {
  GameControllerState board(SquaresState? board);

  GameControllerState error(String? error);

  GameControllerState game(Game? game);

  GameControllerState loading(bool loading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GameControllerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GameControllerState(...).copyWith(id: 12, name: "My name")
  /// ````
  GameControllerState call({
    SquaresState? board,
    String? error,
    Game? game,
    bool? loading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGameControllerState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGameControllerState.copyWith.fieldName(...)`
class _$GameControllerStateCWProxyImpl implements _$GameControllerStateCWProxy {
  final GameControllerState _value;

  const _$GameControllerStateCWProxyImpl(this._value);

  @override
  GameControllerState board(SquaresState? board) => this(board: board);

  @override
  GameControllerState error(String? error) => this(error: error);

  @override
  GameControllerState game(Game? game) => this(game: game);

  @override
  GameControllerState loading(bool loading) => this(loading: loading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GameControllerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GameControllerState(...).copyWith(id: 12, name: "My name")
  /// ````
  GameControllerState call({
    Object? board = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? game = const $CopyWithPlaceholder(),
    Object? loading = const $CopyWithPlaceholder(),
  }) {
    return GameControllerState(
      board: board == const $CopyWithPlaceholder()
          ? _value.board
          // ignore: cast_nullable_to_non_nullable
          : board as SquaresState?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      game: game == const $CopyWithPlaceholder()
          ? _value.game
          // ignore: cast_nullable_to_non_nullable
          : game as Game?,
      loading: loading == const $CopyWithPlaceholder() || loading == null
          ? _value.loading
          // ignore: cast_nullable_to_non_nullable
          : loading as bool,
    );
  }
}

extension $GameControllerStateCopyWith on GameControllerState {
  /// Returns a callable class that can be used as follows: `instanceOfclass GameControllerState.name.copyWith(...)` or like so:`instanceOfclass GameControllerState.name.copyWith.fieldName(...)`.
  _$GameControllerStateCWProxy get copyWith =>
      _$GameControllerStateCWProxyImpl(this);
}
