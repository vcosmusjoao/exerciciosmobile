import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

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
      title: Text("Experiencia"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _texto() {
    return Center(
        child: Text(
      "(11/21-Present) Java Development InternShip at Sinqia",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 30.0),
    ));
  }
}
