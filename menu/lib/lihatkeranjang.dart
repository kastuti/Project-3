import 'package:flutter/material.dart';

class LihatKeranjang extends StatefulWidget {
  @override
  _LihatKeranjang createState() => _LihatKeranjang();
}

class _LihatKeranjang extends State<LihatKeranjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("FORM KERANJANG"),
        backgroundColor: Colors.deepOrange[700],
      ),
    );
  }
}
