import 'package:csa_notepad/screens/auth/index.dart';
import 'package:csa_notepad/screens/home/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/auth': (BuildContext context) => new Auth(),
    '/': (BuildContext context) => new Home()
  };

  Widget build(BuildContext context) {
    bool userIsLoggedIn = false;

    return new MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.orange,
            accentColor: Colors.blue),
        title: "CSA Notepad",
        routes: routes,
        initialRoute: userIsLoggedIn ? "/" : "/auth");
  }
}

class Routes {
  Routes() {
    runApp(new App());
  }
}
