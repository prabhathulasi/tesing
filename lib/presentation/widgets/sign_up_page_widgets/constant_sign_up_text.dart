import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30.0, top: 30.0),
      child: Text(
        'Hello!\nSignUp to\nget started',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
      ),
    );
  }
}
