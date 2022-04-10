import 'package:bloc_login/application/login/login_cubit.dart';
import 'package:bloc_login/presentation/widgets/sign_in_page_widgets/constant_texts.dart';
import 'package:bloc_login/presentation/widgets/sign_in_page_widgets/forgot_password.dart';
import 'package:bloc_login/presentation/widgets/sign_in_page_widgets/login_with_email_buttons.dart';
import 'package:bloc_login/presentation/widgets/sign_in_page_widgets/sign_in_page_input_fields.dart';
import 'package:bloc_login/presentation/widgets/sign_in_page_widgets/social_sign_in_buttons.dart';
import 'package:bloc_login/presentation/widgets/snackbar_widgets/snackbar_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginState>(
            listenWhen: (p, c) => p.status != c.status,
            listener: (context, state) {
              if (state.status.isSubmissionFailure) {
                ScaffoldMessenger.of(context).showSnackBar(snackBarWhenFailure(
                    snackBarFailureText: state.exceptionError));
              } else if (state.status.isSubmissionSuccess) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(snackBarWhenSuccess());
              }
            },
            builder: (context, state) => Container(
                  color: Colors.white,
                  child: Stack(children: [
                    Positioned.fill(
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/login_image.png",
                              width: MediaQuery.of(context).size.width,
                            ))),
                    SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(25.0, 50, 38.0, 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LoginText(),
                          EmailInputField(state: state),
                          PasswordInputField(state: state),
                          const Center(child: Login()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ForgotPassword(),
                              SignUpButton(),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Center(child: SeperatedText()),
                          const Center(child: SignInWithGoogle())
                        ],
                      ),
                    ),

                    // Positioned.fill(
                    //   child: SingleChildScrollView(
                    //     padding: const EdgeInsets.fromLTRB(38.0, 0, 38.0, 8.0),
                    //     child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.stretch,
                    //         mainAxisAlignment: MainAxisAlignment.start,
                    //         children: [

                    //           const Text(
                    //             'Hello Again!\nWelcome\nback',
                    //             textAlign: TextAlign.left,
                    //             style: TextStyle(
                    //                 fontSize: 18, fontWeight: FontWeight.bold),
                    //           ),
                    //           EmailInputField(state: state),
                    //           PasswordInputField(state: state),
                    //           Row(
                    //             children: const [
                    //               Expanded(child: SignUpButton()),
                    //               Expanded(child: Login()),
                    //               Expanded(child: ForgotPassword())
                    //             ],
                    //           ),
                    //           Column(children: const [
                    //             SeperatedText(),
                    //             SignInWithGoogle(),
                    //           ])
                    //         ]),
                    //   ),
                    // ),
                    state.status.isSubmissionInProgress
                        ? const Positioned(
                            child: Align(
                              alignment: Alignment.center,
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Container()
                  ]),
                )));
  }
}
