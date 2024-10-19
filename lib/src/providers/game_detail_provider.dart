import 'package:dio_riverpod/src/models/game.dart';
import 'package:dio_riverpod/src/services/game_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gameDetailProvider =
    FutureProvider.family<Game?, String>((ref, id) async {
  final result = await GameService().retrieve(id);
  return result.fold(
    (l) {
      print(l);
      return null;
    },
    (r) => r,
  );
});
