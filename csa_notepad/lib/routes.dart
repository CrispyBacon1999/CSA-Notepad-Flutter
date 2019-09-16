import 'package:csa_notepad/screens/auth/auth.dart';
import 'package:csa_notepad/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    bool userIsLoggedIn = false;

    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.orange,
            accentColor: Colors.blue),
        title: "CSA Notepad",
        home: userIsLoggedIn ? new Home() : new Auth());
  }
}

class Routes {
  Routes() {
    runApp(App());
  }
}
