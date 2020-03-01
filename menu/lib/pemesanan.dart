import 'package:flutter/material.dart';
import 'package:menu/lihatkeranjang.dart';

class HalamanPemesanan extends StatefulWidget {
  @override
  _Pemesanan createState() => _Pemesanan();
}

class _Pemesanan extends State<HalamanPemesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("FORM PESANAN GEPREK ALHAMDULILLAH"),
          backgroundColor: Colors.deepOrange[700],
        ),
        body: new Column(children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.fastfood),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Makanan",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.fastfood),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Jumlah Pesanan",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.place),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Alamat Pemesan",
              ),
            ),
          ),
          RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LihatKeranjang()));
              },
              child: Text('Lihat Keranjang')),
        ]));
  }
}
