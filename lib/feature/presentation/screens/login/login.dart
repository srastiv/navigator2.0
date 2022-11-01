import 'package:flutter/material.dart';

import '../../widgets/textfield.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
    required this.onTapOne,
    this.selectedPageNumber,
    required this.isLogin,
  }) : super(key: key);

  final ValueChanged<String> onTapOne;
  final ValueChanged? selectedPageNumber;
  final ValueChanged isLogin;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        //  automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EnterDetailsTextField(
              height: 50,
              text: "email",
              controller: emailController,
            ),
            EnterDetailsTextField(
              height: 50,
              text: "password",
              controller: passwordController,
            ),
            ElevatedButton(
                onPressed: () {
                  widget.isLogin(true);
                  widget.onTapOne(emailController.text);
                },
                child: const Text("go to HOME")),
          ],
        ),
      ),
    );
  }
}
