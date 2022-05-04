import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isSwitchDay = true;
  bool valorSwitchPequeno = false;
  bool shared = false;

  List<Color> _colors = [
    Color.fromARGB(255, 245, 237, 213),
    Color.fromARGB(255, 0, 78, 88)
  ];

  int _currentIndex = 1;

  _onChanged() {
    int _colorCount = _colors.length;
    setState(() {
      if (_currentIndex == _colorCount - 1) {
        _currentIndex = 0;
      } else {
        _currentIndex += 1;
      }
    });
  }

  String infoResultado = "Verificar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(context),
    );
  }

  _setSharedPreference(key, value) async {
    if (shared) return;
    shared = true;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value.toString());
    shared = false;
  }

  _titulo() {
    return AppBar(
      title: Text("Frases"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      _switch(),
      _container(),
    ]));
  }

  _container() {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: _isSwitchDay ? Colors.orange : Color.fromARGB(255, 128, 0, 106),
        width: 900.0,
        height: 600.0,
        child: Column(children: <Widget>[
          _view(valorSwitchPequeno ? 10.0 : 20.0),
        ]),
      ),
    );
  }

  _switch() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Dia"),
          Switch(
            value: _isSwitchDay,
            onChanged: (value) {
              setState(() {
                _isSwitchDay = value;
              });
            },
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.blue,
          ),
          Text("Pequeno"),
          Switch(
            value: valorSwitchPequeno,
            onChanged: (val) {
              setState(() {
                valorSwitchPequeno = val;
              });
            },
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  _view(fontsizeSwitch) {
    return (Container(
      child: Text(
        "A vingança nunca é plena, mata a alma e envenena",
        style: TextStyle(fontSize: fontsizeSwitch),
      ),
    ));
  }
}
