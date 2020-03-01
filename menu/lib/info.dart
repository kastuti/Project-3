import 'package:flutter/material.dart';

class HalamanInfo extends StatefulWidget {
  @override
  _HalamanInfoState createState() => _HalamanInfoState();
}

class _HalamanInfoState extends State<HalamanInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Informasi Toko"),
        backgroundColor: Colors.deepOrange[700],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Image.asset('assets/images/Logo_Geprek_Alhamdulillah.jpg',
                width: 150, height: 150),
            Container(
              height: 100,
              color: Colors.deepOrange,
              child: Center(
                child: Text(
                    "Anjas adalah seorang mahasiswa POLINDRA \ndia adalah anak dari pemilik geprek alhamdulillah.\nSembari berkuliah dia juga  menawarkan menu dari geprek yang dia jual \n"),
              ),
            ),
            Image.asset('assets/images/warung.jpg'),
            Image.asset('assets/images/warung2.jpg'),
            Container(
              height: 100,
              color: Colors.deepOrange,
              child: Center(
                child: Text(
                    "Warung geprek alhamdulillah berlokasi di Bojongslawi \nKec. Lohbener \n Kabupaten Indramayu, Jawa Barat \n45252"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
