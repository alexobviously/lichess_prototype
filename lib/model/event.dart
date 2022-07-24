import 'package:json_annotation/json_annotation.dart';
import 'package:lichess_prototype/controllers/tv_stream_controller.dart';
import 'package:lichess_prototype/model/model.dart';

part 'event.g.dart';

abstract class Event {
  final EventType type;
  const Event({required this.type});
  factory Event.fromJson(Map<String, dynamic> json) {
    // TODO: this is temporary, we can use enhanced enums when flutter 3 is stable
    EventType type = EventType.values
        .firstWhere((e) => e.name == (json['type'] ?? json['t']));

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
    } else if (type == EventType.featured) {
      return TvFeaturedEvent(
        TvStreamState.fromJson(json['d']),
      );
    } else if (type == EventType.fen) {
      return TvFenEvent.fromJson(json['d']);
      // return TvFenEvent.fromJson(json['d']),
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
  featured,
  fen,
}

class ChallengeEvent extends Event {
  final Challenge challenge;
  const ChallengeEvent({required EventType type, required this.challenge})
      : super(type: type);

  @override
  String toString() => 'ChallengeEvent()';
}

class GameEvent extends Event {
  final Game game;
  const GameEvent({required EventType type, required this.game})
      : super(type: type);

  @override
  String toString() => 'GameEvent()';
}

class TvFeaturedEvent extends Event {
  final TvStreamState state;

  const TvFeaturedEvent(this.state) : super(type: EventType.featured);

  @override
  String toString() => 'TvFeaturedEvent(${state.fen})';
}

@JsonSerializable()
class TvFenEvent extends Event {
  final String fen;
  @JsonKey(name: 'lm')
  final String lastMove;
  @JsonKey(name: 'wc')
  final num whiteClock;
  @JsonKey(name: 'bc')
  final num blackClock;

  const TvFenEvent({
    required this.fen,
    required this.lastMove,
    required this.whiteClock,
    required this.blackClock,
  }) : super(type: EventType.fen);

  factory TvFenEvent.fromJson(Map<String, dynamic> json) =>
      _$TvFenEventFromJson(json);

  Map<String, dynamic> toJson() => _$TvFenEventToJson(this);
}
