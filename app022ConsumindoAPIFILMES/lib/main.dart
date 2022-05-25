import 'package:flutter/material.dart';
import 'movies.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      title: 'Filmes',
      home: MoviesListView(),
    );
  }
}
