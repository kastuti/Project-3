import 'package:flutter/material.dart';
import 'package:menu/pemesanan.dart';

class HalamanView extends StatefulWidget {
  @override
  _HalamanViewState createState() => _HalamanViewState();
}

class _HalamanViewState extends State<HalamanView> {
  List<Container> daftarMakanan = new List();

  var makanan = [
    {"nama": "Geprek", "gambar": "ayam.jpg"},
    {"nama": "Mie Geprek", "gambar": "mie_geprek.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < makanan.length; i++) {
      final makanannya = makanan[i];
      final gambar = makanannya["gambar"];
      daftarMakanan.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
            children: <Widget>[
              new Hero(
                tag: makanannya['nama'],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new Detail(
                                  nama: makanannya['nama'],
                                  gambar: gambar,
                                ))),
                    child: new Image.asset(
                      "img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(5.0),
              ),
              new Text(
                makanannya['nama'],
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 2,
      children: daftarMakanan,
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianIcon(),
          new Keterangan(),
        ],
      ),
    );
  }
}

class BagianIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[
          new Iconteks(
            icon: Icons.shopping_basket,
            teks: "Mau ?",
          ),
          RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HalamanPemesanan()));
              },
              child: Text('Tambah Keranjang')),
        ],
      ),
    );
  }
}

class Iconteks extends StatelessWidget {
  Iconteks({this.icon, this.teks});
  final IconData icon;
  final String teks;
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Icon(
          icon,
          size: 50.0,
          color: Colors.blue,
        ),
        new Text(teks, style: new TextStyle(fontSize: 18.0, color: Colors.blue))
      ],
    );
  }
}

class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child:
            new Text("Ayam Geprek enak", style: new TextStyle(fontSize: 18.0)),
      ),
    );
  }
}
