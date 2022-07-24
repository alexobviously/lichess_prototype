// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlayerCWProxy {
  Player color(String color);

  Player id(String id);

  Player name(String name);

  Player rating(num rating);

  Player title(String? title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Player(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Player(...).copyWith(id: 12, name: "My name")
  /// ````
  Player call({
    String? color,
    String? id,
    String? name,
    num? rating,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlayer.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPlayer.copyWith.fieldName(...)`
class _$PlayerCWProxyImpl implements _$PlayerCWProxy {
  final Player _value;

  const _$PlayerCWProxyImpl(this._value);

  @override
  Player color(String color) => this(color: color);

  @override
  Player id(String id) => this(id: id);

  @override
  Player name(String name) => this(name: name);

  @override
  Player rating(num rating) => this(rating: rating);

  @override
  Player title(String? title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Player(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Player(...).copyWith(id: 12, name: "My name")
  /// ````
  Player call({
    Object? color = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return Player(
      color: color == const $CopyWithPlaceholder() || color == null
          ? _value.color
          // ignore: cast_nullable_to_non_nullable
          : color as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      rating: rating == const $CopyWithPlaceholder() || rating == null
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as num,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
    );
  }
}

extension $PlayerCopyWith on Player {
  /// Returns a callable class that can be used as follows: `instanceOfclass Player.name.copyWith(...)` or like so:`instanceOfclass Player.name.copyWith.fieldName(...)`.
  _$PlayerCWProxy get copyWith => _$PlayerCWProxyImpl(this);
}
