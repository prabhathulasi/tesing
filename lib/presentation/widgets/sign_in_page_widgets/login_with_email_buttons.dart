import 'package:bloc_login/application/login/login_cubit.dart';
import 'package:bloc_login/presentation/pages/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            context.read<LoginCubit>().logInWithCredentials();
          },
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff0e4a86),
              padding:
                  const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
              textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ));
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignUpPage()));
        },
        child: const Text(
          "Sign up",
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
