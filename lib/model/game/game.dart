import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game.g.dart';
part 'opponent.dart';
part 'user_game.dart';

@JsonSerializable()
@CopyWith()
class Game {
  final String gameId;
  final String? fullId;
  final String fen;

  const Game({required this.gameId, this.fullId, required this.fen});
  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}
