import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_two_point_0/feature/presentation/widgets/textfield.dart';

class Login extends StatefulWidget {
  Login({
    Key? key,
    this.selectedPageNumber,
  }) : super(key: key);

  final ValueChanged? selectedPageNumber;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
String validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter a valid email address';
    else
      return "dsugsdhjbcds";
  }
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
              validator: (value) => validateEmail(value),
              height: 50,
              text: "email",
              controller: emailController,
            ),
            EnterDetailsTextField(
                 validator: (value) => validateEmail(value),
              height: 50,
              text: "password",
              controller: passwordController,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go('/b');
                },
                child: const Text("go to HOME")),
          ],
        ),
      ),
    );
  }
}
