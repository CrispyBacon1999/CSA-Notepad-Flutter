import 'package:flutter/material.dart';

import 'widgets/google_button/google_button.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Auth'),
          leading: Container(),
        ),
        body: Container(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[GoogleButton()])),
        ));
  }
}
