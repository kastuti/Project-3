import 'package:flutter/material.dart';
import 'package:menu/list_view.dart';
import 'package:menu/info.dart';
import 'package:menu/edit_profile.dart';
import 'package:menu/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GEPREK ALHAMDULILLAH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("GEPREK ALHAMDULILLAH"),
        backgroundColor: Colors.deepOrange[700],
      ),
      backgroundColor: Colors.deepOrange[100],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text(
                "Muhammad Naufal Hariz",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              accountEmail: new Text("Naufalharizxtkj1@gmail.com"),
              decoration: new BoxDecoration(color: Colors.deepOrange[700]),
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile())),
              leading: Icon(Icons.person),
              title: Text("Profil"),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HalamanEdit())),
              leading: Icon(Icons.vpn_key),
              title: Text("Edit Profile"),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HalamanInfo())),
              leading: Icon(Icons.store_mall_directory),
              title: Text("Informasi Toko"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Keluar"),
            ),
          ],
        ),
      ),
      body: HalamanView(),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna, this.function});

  final String title;
  final IconData icon;
  final MaterialColor warna;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: function,
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
