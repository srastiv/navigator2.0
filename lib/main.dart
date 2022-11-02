import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/presentation/routing/routing.dart';
import 'feature/presentation/screens/login/bloc/login_bloc.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: MaterialApp.router(
        routerDelegate: AppRoute.router.routerDelegate,
        routeInformationProvider: AppRoute.router.routeInformationProvider,
        routeInformationParser: AppRoute.router.routeInformationParser,
      ),
    );
  }
}
