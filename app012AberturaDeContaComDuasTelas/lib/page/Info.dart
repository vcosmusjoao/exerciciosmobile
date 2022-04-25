import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  String name;
  String age;
  String sex;
  String school;
  double slider;
  bool brasilian = true;

  Info(
      {required this.name,
      required this.age,
      required this.sex,
      required this.school,
      required this.slider,
      required this.brasilian});

  _body() {
    String info = brasilian ? "SIM" : "NÃO";
    return Container(
        margin: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Nome: $name"),
            Text("Idade: $age"),
            Text("Sexo: $sex"),
            Text("Escolaridade: $school"),
            Text("Limite : $slider"),
            Text("Brasileiro: $info")
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados Informados'),
        backgroundColor: Color.fromARGB(255, 168, 125, 43),
      ),
      body: _body(),
    );
  }
}
