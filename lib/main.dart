import 'package:flutter/material.dart';

import 'feature/presentation/routing/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleEmail(String email) {
    setState(() {
      _emailController.text = email;
    });
  }

  bool isHomeScreen = true;
  setHomeScreen(screenvalue) {
    setState(() {
      isHomeScreen = screenvalue;
    });
  }

  bool _logIn = false;
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRoute.router.routerDelegate,
      routeInformationProvider: AppRoute.router.routeInformationProvider,
      routeInformationParser: AppRoute.router.routeInformationParser,
    );
  }
}
