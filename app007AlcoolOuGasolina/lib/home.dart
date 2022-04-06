import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String infoResultado = "Verificar";

  void _calcularImc() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);

      double resultado = peso / (altura * altura);

      if (resultado < 18.5) {
        infoResultado = 'Abaixo do Peso';
      } else if (resultado >= 18.5 && resultado < 24.9) {
        infoResultado = 'Peso Normal';
      } else if (resultado > 25 && resultado < 29.9) {
        infoResultado = 'Sobrepeso';
      } else if (resultado > 30 && resultado < 34.9) {
        infoResultado = 'Obesidade grau I';
      } else if (resultado > 35 && resultado < 39.9) {
        infoResultado = 'Obesidade Grau II:';
      } else if (resultado >= 40) {
        infoResultado = 'Obesidade Grau III ou Mórbida';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Calculador de IMC"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Peso", pesoController),
          _campo("Altura", alturaController),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularImc,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
