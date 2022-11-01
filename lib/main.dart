import 'package:flutter/material.dart';
import 'package:navigator_two_point_0/core/feature/presentation/screens/home/home.dart';
import 'package:navigator_two_point_0/core/feature/presentation/screens/login/login.dart';
import 'package:navigator_two_point_0/feature/presentation/screens/other%20pages/other_pages.dart';

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
    print(email);
  }

  void _handlePassword(String password) {
    setState(() {
      _passwordController.text = password;
    });
    print(password);
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
    dynamic _onSelectedPage() {
      switch (selectedPage) {
        case 0:
          if (_logIn) {
            return Home(
              selectedPage: (value) {
                setState(() {
                  selectedPage = value;
                });
              },
              email: _emailController.text,
              password: _passwordController.text,
              onTap: (value) {
                _handleEmail;
                selectedPage++;
              },
            );
          }

          return Login(
            selectedPageNumber: (value) {},
            isLogin: (boolValue) {
              setState(() {
                _logIn = boolValue;
              });
            },
            onTapOne: _handleEmail,
          );

        case 1:
           if (isHomeScreen == true) {
          return Cart(
            setHomeScreen: setHomeScreen,
          );
         }
         break;

        case 2:
          return const Profile();

        case 3:
          return const CheckOut();

        default:
          break;
      }
    }

    // final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey("login"),
            child: _onSelectedPage(),
          ),
        ],
        onPopPage: (route, result) {
          _logIn = false;
          selectedPage = 0;
          bool popStatus = route.didPop(result);
          if (popStatus == true) {
            setHomeScreen(true);
          }
          return popStatus;
        },
      ),
    );
  }
}
