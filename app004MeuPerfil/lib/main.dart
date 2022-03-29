import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My Infos')),
            body: Center(
                child: Text(
                    "João Victor Costa!\n 22 anos \n Estágiário de Desenvolvimento na Sinqia\n Ganhei em 2° Lugar o Challenge da FIAP",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center))));
  }
}
