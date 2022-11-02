import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/home/home.dart';
import '../screens/login/login.dart';
import '../screens/other%20pages/other_pages.dart';

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
          return const Cart();
        },
      ),
      GoRoute(
        path: "/d",
        builder: (BuildContext context, GoRouterState state) {
          return const Profile();
        },
      ),
      GoRoute(
        path: "/e",
        builder: (BuildContext context, GoRouterState state) {
          return const CheckOut();
        },
      ),
    ],
  );
}
