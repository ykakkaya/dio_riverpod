import 'package:freezed_annotation/freezed_annotation.dart';
part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  const Game._();
  factory Game(
      {required String id,
      required String name,
      required String console,
      required String photo,
      required DateTime createdAt,
      required int release_year}) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
