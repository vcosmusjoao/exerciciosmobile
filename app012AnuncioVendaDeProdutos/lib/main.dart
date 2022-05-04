import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container MyItems(String image, String titulo, String info) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(image, fit: BoxFit.fill),
            ListTile(
              title: Text(titulo),
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
            "Scroll View - Horizontal",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MyItems(
                  "https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg",
                  "Friends",
                  "Season 1 - 100,00"),
              MyItems(
                  "https://cdn.dooca.store/3427/products/iphonex-preto_450x600+fill_ffffff.jpg?v=1623336648&webp=0",
                  "iPhone X",
                  "Black, 3000.00"),
              MyItems(
                  "https://images.lojanike.com.br/1024x1024/produto/camiseta-nike-air-masculina-DA0933-325-1.jpg",
                  "Camiseta Nike",
                  "Verde- 180.00"),
              MyItems(
                  "https://cf.shopee.com.br/file/040e5174c9b1d5407941121a01fe9529",
                  "Tenis Vans",
                  "Old Skool - 250.00"),
              MyItems(
                  "https://imgs.casasbahia.com.br/55011465/1xg.jpg?imwidth=500",
                  "Ventilador",
                  "Preto- 200.00"),
            ],
          ),
        ),
      ),
    );
  }
}
