import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
              child: Text("CSA Notepad"),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor)),
          ListTile(title: Text("Profile")),
          ListTile(title: Text("About"))
        ])),
        appBar: new AppBar(title: new Text('CSA Notepad')));
  }
}
