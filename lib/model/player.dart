import 'package:copy_with_extension/copy_with_extension.dart';

part 'player.g.dart';

@CopyWith()
class Player {
  final String id;
  final String name;
  final String? title;
  final String color;
  final num rating;

  const Player({
    required this.id,
    required this.name,
    required this.title,
    required this.color,
    required this.rating,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json['user']['id'],
        name: json['user']['name'],
        title: json['user']['title'],
        color: json['color'],
        rating: json['rating'],
      );

  Map<String, dynamic> toJson() => {
        'user': {
          'id': id,
          'name': name,
          'title': title,
        },
        'color': color,
        'rating': rating,
      };
}
