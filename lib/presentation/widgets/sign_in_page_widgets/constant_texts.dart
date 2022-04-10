import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30.0, top: 30.0),
      child: Text(
        'Hello Again!\nWelcome\nback',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SeperatedText extends StatelessWidget {
  const SeperatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: Text(
        'OR',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
    );
  }
}
