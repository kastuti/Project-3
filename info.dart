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
            Image.asset('assets/images/gepreklogo.png',
                width: 150, height: 150),
            Container(
              height: 60,
              color: Colors.deepOrange,
              child: Center(
                child: Text("Anjas adalah seorang mahasiswa POLINDRA"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
