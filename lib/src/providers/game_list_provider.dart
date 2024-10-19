import 'package:dio_riverpod/src/models/game.dart';
import 'package:dio_riverpod/src/services/game_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameListProvider extends StateNotifier<List<Game>> {
  GameListProvider() : super([]) {
    load();
  }
  Future<void> load() async {
    final response = await GameService().list();
    response.fold(
      (l) => print(l),
      (r) => state = r,
    );
  }
}

final gameListProvider =
    StateNotifierProvider<GameListProvider, List<Game>>((ref) {
  return GameListProvider();
});
