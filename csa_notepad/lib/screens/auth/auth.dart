import 'package:flutter/material.dart';

import 'widgets/google_button/google_button.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Auth'),
          leading: new Container(),
        ),
        body: new Container(
          child: new Center(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[new GoogleButton()])),
        ));
  }
}
