part of 'game.dart';

class ClockConfig {
  final int initial;
  final int increment;
  const ClockConfig({required this.initial, required this.increment});
  factory ClockConfig.fromJson(Map<String, dynamic> json) =>
      ClockConfig(initial: json['initial'], increment: json['increment']);
  Map<String, dynamic> toJson() => {'initial': initial, 'increment': increment};
}
