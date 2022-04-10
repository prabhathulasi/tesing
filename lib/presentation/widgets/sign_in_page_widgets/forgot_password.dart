import 'package:bloc_login/application/login/login_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5),
      child: InkWell(
        onTap: () {
          context.read<LoginCubit>().resetPassword();
        },
        child: const Text(
          "Forgot Your Password?",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
