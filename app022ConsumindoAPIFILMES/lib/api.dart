import 'package:http/http.dart' as http;

// A URL da API
const baseUrl = "https://sujeitoprogramador.com/r-api/?api=filmes";

// Criamos a classe da nossa API. O nome você que escolhe. Fazemos aqui
// uma requisição get (como fizemos no react) e passamos a URL, mas usamos
// um Uri.parse pra transformar a string em uma URI.
class API {
  static Future getAllMovie() async {
    var url = baseUrl;
    return await http.get(Uri.parse(url));
  }
}

// Criamos uma classe para representar os objetos que vão conter os filmes
// e colocamos só os campos que vamos usar.
class Movie {
  late int id;
  late String nome;
  late String sinopse;
  late String foto;

  Movie(int id, String nome, String sinopse, String foto) {
    this.id = id;
    this.nome = nome;
    this.sinopse = sinopse;
    this.foto = foto;
  }

  Movie.fromJson(Map json)
      : id = json['id'],
        nome = json['nome'],
        sinopse = json['sinopse'],
        foto = json['foto'];
}
