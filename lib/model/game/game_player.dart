part of 'game.dart';

abstract class GamePlayer {
  String? get id;
  String get name => 'Player';
  factory GamePlayer.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('aiLevel')) {
      return AiGamePlayer.fromJson(json);
    }
    return UserGamePlayer.fromJson(json);
  }
  Map<String, dynamic> toJson() => {};

  static GamePlayer import(Map<String, dynamic> json) =>
      GamePlayer.fromJson(json);
  static Map<String, dynamic> export(GamePlayer gamePlayer) =>
      gamePlayer.toJson();
}

class UserGamePlayer implements GamePlayer {
  @override
  final String id;
  @override
  final String name;
  final int rating;

  const UserGamePlayer({
    required this.id,
    required this.name,
    required this.rating,
  });

  factory UserGamePlayer.fromJson(Map<String, dynamic> json) => UserGamePlayer(
        id: json['id'],
        name: json['name'],
        rating: json['rating'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'rating': rating,
      };
}

class AiGamePlayer implements GamePlayer {
  final int aiLevel;

  const AiGamePlayer({required this.aiLevel});

  factory AiGamePlayer.fromJson(Map<String, dynamic> json) =>
      AiGamePlayer(aiLevel: json['aiLevel']);
  @override
  Map<String, dynamic> toJson() => {'aiLevel': aiLevel};

  @override
  String? get id => null;

  @override
  String get name => 'Stockfish level $aiLevel';
}
