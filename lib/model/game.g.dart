// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) => Game(
      gameId: json['gameId'] as String,
      fen: json['fen'] as String,
    );

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'gameId': instance.gameId,
      'fen': instance.fen,
    };
