import 'package:dio_riverpod/src/providers/game_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameList extends ConsumerWidget {
  const GameList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gameListProvider);
    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (context, index) {
        final game = games[index];
        return Card(
          child: ListTile(
            title: Text(game.name),
            subtitle: Text(game.console),
            leading: Image.network(game.photo),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right)),
          ),
        );
      },
    );
  }
}
