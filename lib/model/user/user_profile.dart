part of 'user.dart';

@CopyWith()
@JsonSerializable()
class UserProfile {
  final String? firstName;
  final String? lastName;
  final String? bio;
  final String? country;
  final String? location;
  final int? fideRating;
  final int? uscfRating;
  final int? ecfRating;
  final String? links;

  String? get fullName => firstName == null && lastName == null
      ? null
      : [if (firstName != null) firstName, if (lastName != null) lastName]
          .join(' ');

  const UserProfile({
    this.firstName,
    this.lastName,
    this.bio,
    this.country,
    this.location,
    this.fideRating,
    this.uscfRating,
    this.ecfRating,
    this.links,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
