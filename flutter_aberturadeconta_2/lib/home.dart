import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValor = 'Masculino';
  String dropdownValorEscola = "Ensino Médio";
  double valorSlider = 20;
  String holderSexo = '';
  String holderEscola = '';
  double valorLimite = 0;

  TextEditingController nomeController = TextEditingController();
  TextEditingController idadeController = TextEditingController();

  String infoResultado = "Verificar";

  void _gerarInfo() {
    setState(() {
      String nome = nomeController.text;
      String idade = idadeController.text;
      holderSexo = dropdownValor;
      holderEscola = dropdownValorEscola;
      valorLimite = valorSlider;
      infoResultado =
          'Resultado: \n Nome: $nome \n Idade: $idade \n Sexo: $holderSexo \n Escolaridade: $holderEscola \n Limite: $valorLimite';
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

  _foto() {
    return Center(
        child: (Image.network(
            "https://www.plasticadosonho.com.br/wp-content/uploads/2017/12/blog-06-como-calcular-o-imc.jpg")));
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
          _campo("Nome", nomeController),
          _campo("Idade", idadeController),
          _dropdownSexo(),
          _dropdownEscolaridade(),
          _slider(),
          _botao(),
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
          onPressed: _gerarInfo,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _dropdownSexo() {
    return DropdownButton<String>(
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
    );
  }

  _dropdownEscolaridade() {
    return DropdownButton<String>(
      value: dropdownValorEscola,
      items: <String>['Ensino Médio', 'Ensino Superior', 'Ensino Fundamental']
          .map((String value) {
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
    );
  }

  _slider() {
    return Slider(
      value: valorSlider,
      min: 0,
      max: 100,
      divisions: 100,
      label: valorSlider.round().toString(),
      onChanged: (double value) {
        setState(() {
          valorSlider = value;
        });
      },
    );
  }
}




  



  // _formulario() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
  //         child: TextField(
  //           decoration: const InputDecoration(
  //             border: UnderlineInputBorder(),
  //             labelText: 'Digite seu nome',
  //           ),
  //         ),
  //       )
  //     ],
  //   );
  // }
//}
