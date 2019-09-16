import 'package:csa_notepad/screens/home/index.dart';
import 'package:csa_notepad/widgets/app_button/index.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new AppButton(
        buttonName: "Google",
        onPressed: () {
          Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        buttonTextStyle: null);
  }
}
