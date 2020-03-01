import 'package:flutter/material.dart';

class HalamanEdit extends StatefulWidget {
  @override
  _HalamanEditState createState() => _HalamanEditState();
}

class _HalamanEditState extends State<HalamanEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Edit Profile"),
          actions: <Widget>[
            new IconButton(icon: const Icon(Icons.save), onPressed: () {})
          ],
          backgroundColor: Colors.deepOrange[700],
        ),
        body: new Column(children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Nama",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Nomor Handphone",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.vpn_key),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Password Baru",
              ),
            ),
          ),
        ]));
  }
}
