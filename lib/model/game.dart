import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';

@JsonSerializable()
class Game {
  final String gameId;
  final String fen;

  const Game({required this.gameId, required this.fen});
  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}
