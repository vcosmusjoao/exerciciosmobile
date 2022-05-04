import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _texto(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Formação"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _texto() {
    return Center(
        child: Text(
      "(2021-2022)-SISTEMAS PARA INTERNET- FIAP",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 30.0),
    ));
  }
}
