import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../constants/texts.dart';
import '../../constants/textstyles.dart';
import '../../widgets/textfield.dart';
import 'bloc/login_bloc.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: kLogin,
          ),
          body: Form(
            autovalidateMode: AutovalidateMode.always,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  EnterDetailsTextField(
                    height: 50,
                    text: kEmail,
                    controller: emailController,
                    onChanged: (value) =>
                        BlocProvider.of<LoginBloc>(context).add(
                      LoginTextChangedEvent(
                          email: emailController.text,
                          password: passwordController.text),
                    ),
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is LoginErrorState) {
                        return Text(state.emailErrorMessage,
                            style: kErrorTextStyle);
                      }
                      return const SizedBox();
                    },
                  ),
                  EnterDetailsTextField(
                    height: 50,
                    text: kPassword,
                    controller: passwordController,
                    onChanged: (value) =>
                        BlocProvider.of<LoginBloc>(context).add(
                      LoginTextChangedEvent(
                          email: emailController.text,
                          password: passwordController.text),
                    ),
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is LoginErrorState) {
                        return Text(state.passwordErrorMessage,
                            style: kErrorTextStyle);
                      }
                      return const SizedBox();
                    },
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            (state is! LoginValidState)
                                ? null
                                : context.go('/b');
                          },
                          child: kGoToHome);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
