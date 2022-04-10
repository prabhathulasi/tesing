import 'package:bloc_login/application/sign_up/sign_up_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key, required this.state}) : super(key: key);
  final SignUpState state;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ElevatedButton(
          child: const Text('SignUp'),
          onPressed: () {
            state.displaySignUpButton
                ? () => context.read<SignUpCubit>().signUpWithCredentials()
                : null;
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
