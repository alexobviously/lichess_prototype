// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserCWProxy {
  User id(String id);

  User profile(UserProfile profile);

  User username(String username);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `User(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// User(...).copyWith(id: 12, name: "My name")
  /// ````
  User call({
    String? id,
    UserProfile? profile,
    String? username,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUser.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUser.copyWith.fieldName(...)`
class _$UserCWProxyImpl implements _$UserCWProxy {
  final User _value;

  const _$UserCWProxyImpl(this._value);

  @override
  User id(String id) => this(id: id);

  @override
  User profile(UserProfile profile) => this(profile: profile);

  @override
  User username(String username) => this(username: username);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `User(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// User(...).copyWith(id: 12, name: "My name")
  /// ````
  User call({
    Object? id = const $CopyWithPlaceholder(),
    Object? profile = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
  }) {
    return User(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      profile: profile == const $CopyWithPlaceholder() || profile == null
          ? _value.profile
          // ignore: cast_nullable_to_non_nullable
          : profile as UserProfile,
      username: username == const $CopyWithPlaceholder() || username == null
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
    );
  }
}

extension $UserCopyWith on User {
  /// Returns a callable class that can be used as follows: `instanceOfclass User.name.copyWith(...)` or like so:`instanceOfclass User.name.copyWith.fieldName(...)`.
  _$UserCWProxy get copyWith => _$UserCWProxyImpl(this);
}

abstract class _$UserProfileCWProxy {
  UserProfile bio(String? bio);

  UserProfile country(String? country);

  UserProfile ecfRating(int? ecfRating);

  UserProfile fideRating(int? fideRating);

  UserProfile firstName(String? firstName);

  UserProfile lastName(String? lastName);

  UserProfile links(String? links);

  UserProfile location(String? location);

  UserProfile uscfRating(int? uscfRating);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  UserProfile call({
    String? bio,
    String? country,
    int? ecfRating,
    int? fideRating,
    String? firstName,
    String? lastName,
    String? links,
    String? location,
    int? uscfRating,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserProfile.copyWith.fieldName(...)`
class _$UserProfileCWProxyImpl implements _$UserProfileCWProxy {
  final UserProfile _value;

  const _$UserProfileCWProxyImpl(this._value);

  @override
  UserProfile bio(String? bio) => this(bio: bio);

  @override
  UserProfile country(String? country) => this(country: country);

  @override
  UserProfile ecfRating(int? ecfRating) => this(ecfRating: ecfRating);

  @override
  UserProfile fideRating(int? fideRating) => this(fideRating: fideRating);

  @override
  UserProfile firstName(String? firstName) => this(firstName: firstName);

  @override
  UserProfile lastName(String? lastName) => this(lastName: lastName);

  @override
  UserProfile links(String? links) => this(links: links);

  @override
  UserProfile location(String? location) => this(location: location);

  @override
  UserProfile uscfRating(int? uscfRating) => this(uscfRating: uscfRating);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  UserProfile call({
    Object? bio = const $CopyWithPlaceholder(),
    Object? country = const $CopyWithPlaceholder(),
    Object? ecfRating = const $CopyWithPlaceholder(),
    Object? fideRating = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? links = const $CopyWithPlaceholder(),
    Object? location = const $CopyWithPlaceholder(),
    Object? uscfRating = const $CopyWithPlaceholder(),
  }) {
    return UserProfile(
      bio: bio == const $CopyWithPlaceholder()
          ? _value.bio
          // ignore: cast_nullable_to_non_nullable
          : bio as String?,
      country: country == const $CopyWithPlaceholder()
          ? _value.country
          // ignore: cast_nullable_to_non_nullable
          : country as String?,
      ecfRating: ecfRating == const $CopyWithPlaceholder()
          ? _value.ecfRating
          // ignore: cast_nullable_to_non_nullable
          : ecfRating as int?,
      fideRating: fideRating == const $CopyWithPlaceholder()
          ? _value.fideRating
          // ignore: cast_nullable_to_non_nullable
          : fideRating as int?,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      links: links == const $CopyWithPlaceholder()
          ? _value.links
          // ignore: cast_nullable_to_non_nullable
          : links as String?,
      location: location == const $CopyWithPlaceholder()
          ? _value.location
          // ignore: cast_nullable_to_non_nullable
          : location as String?,
      uscfRating: uscfRating == const $CopyWithPlaceholder()
          ? _value.uscfRating
          // ignore: cast_nullable_to_non_nullable
          : uscfRating as int?,
    );
  }
}

extension $UserProfileCopyWith on UserProfile {
  /// Returns a callable class that can be used as follows: `instanceOfclass UserProfile.name.copyWith(...)` or like so:`instanceOfclass UserProfile.name.copyWith.fieldName(...)`.
  _$UserProfileCWProxy get copyWith => _$UserProfileCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      username: json['username'] as String,
      profile: UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'profile': instance.profile.toJson(),
    };

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      bio: json['bio'] as String?,
      country: json['country'] as String?,
      location: json['location'] as String?,
      fideRating: json['fideRating'] as int?,
      uscfRating: json['uscfRating'] as int?,
      ecfRating: json['ecfRating'] as int?,
      links: json['links'] as String?,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'bio': instance.bio,
      'country': instance.country,
      'location': instance.location,
      'fideRating': instance.fideRating,
      'uscfRating': instance.uscfRating,
      'ecfRating': instance.ecfRating,
      'links': instance.links,
    };
