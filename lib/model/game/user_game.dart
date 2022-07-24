part of 'event_game.dart';

@JsonSerializable()
@CopyWith()
class UserGame extends EventGame {
  final String color;
  final String lastMove;
  final String source;
  final bool rated;
  final bool hasMoved;
  final bool isMyTurn;
  final Opponent opponent;

  int get colour => color == 'white'
      ? Squares.white
      : color == 'black'
          ? Squares.black
          : -1;

  const UserGame({
    required super.gameId,
    super.fullId,
    required super.fen,
    required this.color,
    required this.lastMove,
    required this.source,
    required this.rated,
    required this.hasMoved,
    required this.isMyTurn,
    required this.opponent,
  });

  factory UserGame.fromJson(Map<String, dynamic> json) =>
      _$UserGameFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserGameToJson(this);
}
