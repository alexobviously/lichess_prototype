import 'package:json_annotation/json_annotation.dart';

part 'challenge.g.dart';

@JsonSerializable()
class Challenge {
  final String id;
  final String url;
  final String status;

  const Challenge({
    required this.id,
    required this.url,
    required this.status,
  });
  factory Challenge.fromJson(Map<String, dynamic> json) =>
      _$ChallengeFromJson(json);
  Map<String, dynamic> toJson() => _$ChallengeToJson(this);
}
