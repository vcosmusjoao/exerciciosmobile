import 'package:flutter/material.dart';
import 'package:flutter_aberturadeconta_2/info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValor = 'Masculino';
  String dropdownValorEscola = 'Ensino Médio';
  double valorSlider = 100;
  String holderSexo = '';
  String holderEscola = '';
  double valorLimite = 0;
  bool valorSwitch = false;
  String brasileiro = '';
  String nome = '';
  String idade = '';

  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();

  String infoResultado = "Verificar";

  void _gerarInfo() {
    setState(() {
      nome = nomeController.text;
      idade = idadeController.text;
      holderSexo = dropdownValor;
      holderEscola = dropdownValorEscola;
      valorLimite = valorSlider;
      if (valorSwitch == true) {
        brasileiro = 'Brasileiro(a)';
      } else {
        brasileiro = 'Estrangeiro(a)';
      }
      infoResultado =
          'Dados Informados: \n Nome: $nome \n Idade: $idade \n Sexo: $holderSexo \n Escolaridade: $holderEscola \n Limite: $valorLimite \n $brasileiro';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(context),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Abertura de Conta"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Nome", nomeController),
          _campo("Idade", idadeController),
          _dropdownSexo(),
          _dropdownEscolaridade(),
          _slider(),
          _switch(),
          _botao(context, "Infos"),
          _texto(infoResultado),
        ],
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

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.name,
      textAlign: TextAlign.center,
      controller: objController,
      decoration: (new InputDecoration(labelText: labelTitulo)),
    );
  }

  _botao(BuildContext context, String textoBotao) {
    return RaisedButton(
        color: Colors.green,
        child: Text(
          textoBotao,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          _onClickNavegacao(context);
        });
  }

  _onClickNavegacao(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Info(
            valueNome: nome,
            valueIdade: idade,
            valueSex: holderSexo,
            valueEscolaridade: holderEscola,
            valueLimite: valorLimite,
            valueNacionalidade: brasileiro,
          );
        },
      ),
    );
  }

  _dropdownSexo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Sexo:                "),
        DropdownButton<String>(
          value: dropdownValor,
          items: <String>['Masculino', 'Feminino', 'Outro'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? valorSelecionado) {
            setState(() {
              dropdownValor = valorSelecionado!;
            });
          },
        )
      ],
    );
  }

  _dropdownEscolaridade() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Escolaridade: "),
        DropdownButton<String>(
          value: dropdownValorEscola,
          items: <String>[
            'Ensino Médio',
            'Ensino Superior',
            'Ensino Fundamental'
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? valorSelecionado) {
            setState(() {
              dropdownValorEscola = valorSelecionado!;
            });
          },
        )
      ],
    );
  }

  _switch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Brasileiro:      "),
        Switch(
          value: valorSwitch,
          onChanged: (value) {
            setState(() {
              valorSwitch = value;
            });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.blue,
        )
      ],
    );
  }

  _slider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Limite:     "),
        Slider(
          value: valorSlider,
          min: 100,
          max: 3000,
          divisions: 100,
          label: valorSlider.round().toString(),
          onChanged: (double value) {
            setState(() {
              valorSlider = value;
            });
          },
        )
      ],
    );
  }
}
