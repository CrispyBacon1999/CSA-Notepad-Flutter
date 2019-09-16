import 'package:csa_notepad/widgets/app_drawer/index.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: AppDrawer(), appBar: AppBar(title: new Text('CSA Notepad')));
  }
}
