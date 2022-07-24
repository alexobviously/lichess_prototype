import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';
part 'user_profile.dart';

@JsonSerializable()
@CopyWith()
class User {
  final String id;
  final String username;
  final UserProfile profile;

  const User({
    required this.id,
    required this.username,
    required this.profile,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
