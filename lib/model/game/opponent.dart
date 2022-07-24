part of 'event_game.dart';

@JsonSerializable()
class Opponent {
  final String? id;
  final String username;
  final num? ai;
  final num? rating;

  bool get isAi => ai != null;

  const Opponent({
    this.id,
    required this.username,
    this.ai,
    this.rating,
  }) : assert(rating != null || ai != null);

  factory Opponent.fromJson(Map<String, dynamic> json) =>
      _$OpponentFromJson(json);
  Map<String, dynamic> toJson() => _$OpponentToJson(this);
}
