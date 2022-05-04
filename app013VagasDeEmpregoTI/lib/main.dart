import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container MyItems(String titulo, String info) {
    return Container(
      width: 300.0,
      height: 150.0,
      child: Card(
        color: Colors.red,
        child: Wrap(
          children: <Widget>[
            ListTile(
              title: Text(
                titulo,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              textColor: Colors.white,
              subtitle: Text(info),
            ),
          ],
        ),
      ),
    ); //First Card
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Vagas",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              MyItems("Dev.Junior JAVA", "Requisitos: 3 anos de Experiencia"),
              MyItems("Dev. Pleno C#",
                  "Remoto- 8k- Beneficios \n Descrição: Atuar como Dev.\n Contato: joao@gmail.com"),
              MyItems("Dev. Backend Delphi",
                  "Remoto- 4k- Beneficios \n Descrição: Atuar como Dev.\n Contato: joao@gmail.com"),
              MyItems("QA Junior",
                  "Remoto- 3k- Beneficios \n Descrição: Atuar como Análista de Qualidade.\n Contato: joao@gmail.com"),
              MyItems("Dev. Senior PHP",
                  "Remoto- 10k- Beneficios \n Descrição: Atuar como Dev.\n Contato: joao@gmail.com"),
              MyItems("Scrum Master",
                  "Remoto- 4k- Beneficios \n Descrição: Atuar como Scrum.\n Contato: joao@gmail.com"),
              MyItems("Tech Lead",
                  "Remoto- 12k- Beneficios \n Descrição: Atuar como Tech Lead.\n Contato: joao@gmail.com"),
              MyItems("Dev. Front-end Senior",
                  "Remoto- 5k- Beneficios \n Descrição: Atuar como Dev.\n Contato: joao@gmail.com"),
            ],
          ),
        ),
      ),
    );
  }
}
