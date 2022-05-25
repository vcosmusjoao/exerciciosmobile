import 'package:flutter/material.dart';
import 'dart:convert';
import 'api.dart';
import 'details.dart';

// Vamos precisar de uma aplicação com estado
class MoviesListView extends StatefulWidget {
  @override
  _MoviesListViewState createState() => _MoviesListViewState();
}

class _MoviesListViewState extends State<MoviesListView> {
  List<Movie> movies = List<Movie>.empty(); // Lista dos filmes

  // Construtor, atualiza com setState a lista de filmes.
  _MoviesListViewState() {
    API.getAllMovie().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body); // Usamos um iterator
        movies = lista.map((model) => Movie.fromJson(model)).toList();
      });
    });
  }

  // Método build sobrecarregado que vai construir nossa página
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Filmes"),
      ),
      // Aqui vem nossa lista
      body: ListView.builder(
        itemCount: movies.length, // quantidade de elementos
        // Os elementos da lista
        itemBuilder: (context, index) {
          // Vai ser um item de lista tipo ListTile
          return ListTile(
            // Uma imagem de avatar redondinho com a imagem do filme
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.network(movies[index].foto),
            ),
            // No título é o nome do filme
            title: Text(
              movies[index].nome,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            onTap: () {
              // Abrimos uma nova página, outra classe, que está no arquivo
              // detail.dart. Veja que é um MaterialPageRote, tipo o
              // MaterialApp, só que é só uma página nova.
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => DetailPage(movies[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
