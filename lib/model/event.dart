import 'package:json_annotation/json_annotation.dart';
import 'package:lichess_prototype/model/challenge.dart';
import 'package:lichess_prototype/model/game.dart';

part 'event.g.dart';

abstract class Event {
  final EventType type;
  const Event({required this.type});
  factory Event.fromJson(Map<String, dynamic> json) {
    // TODO: this is temporary, we can use enhanced enums when flutter 3 is stable
    EventType type = EventType.values.firstWhere((e) => e.name == json['type']);

    if ([
      EventType.challenge,
      EventType.challengeCanceled,
      EventType.challengeDeclined
    ].contains(type)) {
      return ChallengeEvent(
        type: type,
        challenge: Challenge.fromJson(json['challenge']),
      );
    } else if ([EventType.gameStart, EventType.gameFinish].contains(type)) {
      return GameEvent(
        type: type,
        game: Game.fromJson(json['game']),
      );
    } else {
      throw Exception('Invalid event');
    }
  }
}

enum EventType {
  challenge,
  challengeCanceled,
  challengeDeclined,
  gameStart,
  gameFinish,
}

@JsonSerializable()
class ChallengeEvent extends Event {
  final Challenge challenge;
  const ChallengeEvent({required EventType type, required this.challenge})
      : super(type: type);

  @override
  String toString() => 'ChallengeEvent()';
}

@JsonSerializable()
class GameEvent extends Event {
  final Game game;
  const GameEvent({required EventType type, required this.game})
      : super(type: type);

  @override
  String toString() => 'GameEvent()';
}
