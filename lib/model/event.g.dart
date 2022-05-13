// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChallengeEvent _$ChallengeEventFromJson(Map<String, dynamic> json) =>
    ChallengeEvent(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      challenge: Challenge.fromJson(json['challenge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChallengeEventToJson(ChallengeEvent instance) =>
    <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type],
      'challenge': instance.challenge,
    };

const _$EventTypeEnumMap = {
  EventType.challenge: 'challenge',
  EventType.challengeCanceled: 'challengeCanceled',
  EventType.challengeDeclined: 'challengeDeclined',
  EventType.gameStart: 'gameStart',
  EventType.gameFinish: 'gameFinish',
};

GameEvent _$GameEventFromJson(Map<String, dynamic> json) => GameEvent(
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
      game: Game.fromJson(json['game'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameEventToJson(GameEvent instance) => <String, dynamic>{
      'type': _$EventTypeEnumMap[instance.type],
      'game': instance.game,
    };
