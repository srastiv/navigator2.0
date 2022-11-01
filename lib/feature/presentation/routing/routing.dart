import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_two_point_0/feature/presentation/screens/home/home.dart';
import 'package:navigator_two_point_0/feature/presentation/screens/login/login.dart';
import 'package:navigator_two_point_0/feature/presentation/screens/other%20pages/other_pages.dart';

class AppRoute {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return Login();
        },
      ),
      GoRoute(
        path: "/b",
        builder: (BuildContext context, GoRouterState state) {
          return Home();
        },
      ),
     
      GoRoute(
        path: "/c",
        builder: (BuildContext context, GoRouterState state) {
          return Cart();
        },
      ),
      GoRoute(
        path: "/d",
        builder: (BuildContext context, GoRouterState state) {
          return Profile();
        },
      ),
      GoRoute(
        path: "/e",
        builder: (BuildContext context, GoRouterState state) {
          return CheckOut();
        },
      ),
    ],
  );
}
