// https://lichess.org/api#operation/boardGameStream

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:squares/squares.dart';

part 'clock_config.dart';
part 'game.g.dart';
part 'game_player.dart';
part 'game_state.dart';

@CopyWith()
@JsonSerializable()
class Game {
  final String id;
  final bool rated;
  final ClockConfig? clock;
  final int createdAt;
  @JsonKey(fromJson: GamePlayer.import, toJson: GamePlayer.export)
  final GamePlayer white;
  @JsonKey(fromJson: GamePlayer.import, toJson: GamePlayer.export)
  final GamePlayer black;
  final String initialFen;
  final GameState state;

  int colourForPlayer(String userId) {
    if (white.id == userId) {
      return Squares.white;
    }
    if (black.id == userId) {
      return Squares.black;
    }
    return -1;
  }

  Game({
    required this.id,
    required this.rated,
    required this.clock,
    required this.createdAt,
    required this.white,
    required this.black,
    required this.initialFen,
    required this.state,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}
