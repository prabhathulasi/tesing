import 'package:flutter/material.dart';

class SnackBarMethods {
  SnackBarMethods._();
  static SnackBarMethods instance = SnackBarMethods._();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  void success({
    required String message,
  }) {
    _showSnackBar(
      message: message,
      backgroundColor: Colors.greenAccent,
    );
  }

  void warn({
    required String message,
  }) {
    _showSnackBar(
      message: message,
      backgroundColor: Colors.orangeAccent,
    );
  }

  void error({
    required String message,
  }) {
    _showSnackBar(
      message: message,
      backgroundColor: Colors.redAccent,
    );
  }

  void _showSnackBar({
    required String message,
    required Color backgroundColor,
    Color textColor = Colors.white,
  }) {
    scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      backgroundColor: backgroundColor,
      content: Text(
        message,
        style: TextStyle(
          color: textColor,
        ),
      ),
    ));
  }
}
