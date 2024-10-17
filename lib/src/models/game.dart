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
      @JsonKey(name: "created_at") required DateTime createdAt,
      @JsonKey(name: "released_year") required int releaseYear}) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
}
