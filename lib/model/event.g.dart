// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvFenEvent _$TvFenEventFromJson(Map<String, dynamic> json) => TvFenEvent(
      fen: json['fen'] as String,
      lastMove: json['lm'] as String,
      whiteClock: json['wc'] as num,
      blackClock: json['bc'] as num,
    );

Map<String, dynamic> _$TvFenEventToJson(TvFenEvent instance) =>
    <String, dynamic>{
      'fen': instance.fen,
      'lm': instance.lastMove,
      'wc': instance.whiteClock,
      'bc': instance.blackClock,
    };
