import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:squares/squares.dart';

part 'event_game.g.dart';
part 'opponent.dart';
part 'user_game.dart';

@JsonSerializable()
@CopyWith()
class EventGame {
  final String gameId;
  final String? fullId;
  final String fen;

  const EventGame({required this.gameId, this.fullId, required this.fen});
  factory EventGame.fromJson(Map<String, dynamic> json) =>
      _$EventGameFromJson(json);
  Map<String, dynamic> toJson() => _$EventGameToJson(this);
}
