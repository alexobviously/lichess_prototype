part of 'game.dart';

@JsonSerializable()
@CopyWith()
class GameState {
  final String moves;
  final int wtime;
  final int btime;
  final int winc;
  final int binc;
  final String status;

  List<String> get moveList => moves.split(' ');

  const GameState({
    required this.moves,
    required this.wtime,
    required this.btime,
    required this.winc,
    required this.binc,
    required this.status,
  });

  factory GameState.fromJson(Map<String, dynamic> json) =>
      _$GameStateFromJson(json);
  Map<String, dynamic> toJson() => _$GameStateToJson(this);
}
