import 'package:csa_notepad/screens/event_picker/event_picker.dart';
import 'package:csa_notepad/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(
          child: Text("CSA Notepad"),
          decoration: BoxDecoration(color: Theme.of(context).primaryColor)),
      ListTile(
          title: Text("Pick Event"),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => new EventPicker()));
          }),
      ListTile(
        title: Text("Profile"),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => new Profile()));
        },
      ),
      ListTile(title: Text("About"))
    ]));
  }
}
