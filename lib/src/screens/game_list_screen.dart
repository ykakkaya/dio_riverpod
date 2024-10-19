import 'package:dio_riverpod/src/components/game_list.dart';
import 'package:flutter/material.dart';

class GameListPage extends StatelessWidget {
  const GameListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
        title: const Text('Game List'),
      ),
      body: const GameList(),
    );
  }
}
