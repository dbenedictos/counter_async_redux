import 'package:counter_async_redux/api/models/album_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.onIncrement,
    required this.count,
    this.album,
  });

  final VoidCallback onIncrement;
  final int count;
  final AlbumModel? album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Album Id: ${album?.id ?? 'no Id'}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'User Id: ${album?.userId ?? 'hatdog'}',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'Title: ${album?.title ?? 'mama mo'}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onIncrement,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
