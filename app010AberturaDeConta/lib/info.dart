import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  String valueNome;
  String valueSex;
  String valueIdade;
  String valueEscolaridade;
  double valueLimite;
  String valueNacionalidade;

  Info(
      {required this.valueNome,
      required this.valueSex,
      required this.valueNacionalidade,
      required this.valueEscolaridade,
      required this.valueIdade,
      required this.valueLimite});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Nome: $valueNome"),
          Text("Nome: $valueIdade"),
          Text("Nome: $valueSex"),
          Text("Nome: $valueEscolaridade"),
          Text("Nome: $valueLimite"),
          Text("Nome: $valueNacionalidade"),
          RaisedButton(
            child: Text('Voltar'),
            onPressed: () => _onClickVoltar(context),
          ),
        ],
      ),
    );
  }

  _onClickVoltar(BuildContext context) {
    Navigator.pop(context);
  }
}
