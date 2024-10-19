import 'package:dio_riverpod/src/models/game.dart';
import 'package:dio_riverpod/src/services/base_service.dart';
import 'package:fpdart/fpdart.dart';

class GameService extends BaseService {
  static const String basePath = '/game';
  Future<Either<String, List<Game>>> list() async {
    final response = await get(path: basePath);
    return response.fold(
        (l) => left(l),
        (r) =>
            right(r['data'].map<Game>((json) => Game.fromJson(json)).toList()));
  }

    Future<Either<String, Game>> _create(Game game) async {
    final response = await post(path:basePath,data:game.toJson());
    return response.fold(
        (l) => left(l),
        (r) =>
            right(Game.fromJson(r['data'])));
  }

  Future<Either<String, Game>> retrieve(String id) async {
    final response = await get(path: "$basePath/$id");
    return response.fold(
        (l) => left(l),
        (r) =>
            right(Game.fromJson(r['data'])));
  }

   Future<Either<String, Game>> _update(String id, Game game) async {
    final response = await patch(path: "$basePath/$id",data: game.toJson());
    return response.fold(
        (l) => left(l),
        (r) =>
            right(Game.fromJson(r['data'])));
  }

     Future<Either<String, bool>> remove(String id,) async {
    final response = await delete(path: "$basePath/$id");
    return response.fold(
        (l) => left(l),
        (r) =>
            right(true));
  }

  Future<Either<String,Game>> save(Game game){
    return game.id.isEmpty ? _create(game) : _update(game.id,game);
  }
}
