import 'package:flutter/material.dart';
import 'package:app013/pages/Formacao.dart';
import 'package:app013/pages/Experiencia.dart';

class Pessoal extends StatefulWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  _PessoalState createState() => _PessoalState();
}

class _PessoalState extends State<Pessoal> {
  int _currentPage = 0;

  final telas = [
    Center(
        child: Text(
      'My Name Is Jonh' +
          "\n" +
          "I am 22 years old" +
          "\n" +
          "I am a FullStack Developer Student" +
          "\n" +
          "Welcome to my Flutter App Profile ",
      style: TextStyle(
        fontSize: 30,
      ),
      textAlign: TextAlign.center,
    )),
    Formacao(),
    Experiencia(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: telas[_currentPage],
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('João Victor '),
              accountEmail: Text('joaodevcosta@gmail.com'),
              currentAccountPicture: CircleAvatar(
                //backgroundImage: AssetImage('assets/images/rock2.jpg'),
                backgroundImage: NetworkImage(
                    'https://pps.whatsapp.net/v/t61.24694-24/264512047_1540489899652921_4026856056616080150_n.jpg?ccb=11-4&oh=ac6ac3fec4e4137765184e683a700be2&oe=62705536'),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Pessoal'),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Formação'),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              //leading: Icon(Icons.star),
              title: Text('Experiência'),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
          ],
        )),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Meu Perfil"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
}
