import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController userController = TextEditingController();
  String info_usuario = '';
  String imagem = '';

  _recuperarCep() async {
    String url = 'https://api.github.com/users/${userController.text}';

    print(url);

    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    int id = retorno["id"];
    String avatar = retorno["avatar_url"];
    String nome = retorno["name"];
    int repositorios = retorno["public_repos"];
    int seguidores = retorno["followers"];
    int seguindo = retorno["following"];

    setState(() {
      info_usuario =
          ' Id: $id \n Nome: $nome \n Repositórios: $repositorios \n Seguidores: $seguidores \n Seguindo: $seguindo';
    });

    setState(() {
      imagem = '$avatar';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil dos Devs"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            _foto(),
            Row(children: <Widget>[
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Digite o USER",
                      labelStyle: TextStyle(color: Colors.green)),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green, fontSize: 25.0),
                  controller: userController,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: _recuperarCep,
                    child: Text("GO",
                        style: TextStyle(color: Colors.white, fontSize: 20.0)),
                    color: Colors.blue,
                  ),
                ),
              ),
            ]),
            Text(info_usuario),
          ],
        ),
      ),
    );
  }

  _foto() {
    if (imagem == '') {
      return Center(
          child: Image.network(
              'https://rockcontent.com/br/wp-content/uploads/sites/2/2020/03/github.jpg',
              width: 200.0,
              height: 200.0));
    }
    return Center(child: Image.network(imagem, width: 200.0, height: 200.0));
  }
}
