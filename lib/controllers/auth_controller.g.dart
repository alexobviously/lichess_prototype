// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthStateCWProxy {
  AuthState user(User? user);

  AuthState working(bool working);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthState call({
    User? user,
    bool? working,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthState.copyWith.fieldName(...)`
class _$AuthStateCWProxyImpl implements _$AuthStateCWProxy {
  final AuthState _value;

  const _$AuthStateCWProxyImpl(this._value);

  @override
  AuthState user(User? user) => this(user: user);

  @override
  AuthState working(bool working) => this(working: working);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthState call({
    Object? user = const $CopyWithPlaceholder(),
    Object? working = const $CopyWithPlaceholder(),
  }) {
    return AuthState(
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as User?,
      working: working == const $CopyWithPlaceholder() || working == null
          ? _value.working
          // ignore: cast_nullable_to_non_nullable
          : working as bool,
    );
  }
}

extension $AuthStateCopyWith on AuthState {
  /// Returns a callable class that can be used as follows: `instanceOfclass AuthState.name.copyWith(...)` or like so:`instanceOfclass AuthState.name.copyWith.fieldName(...)`.
  _$AuthStateCWProxy get copyWith => _$AuthStateCWProxyImpl(this);
}
