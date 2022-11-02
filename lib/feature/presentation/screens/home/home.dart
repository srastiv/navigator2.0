import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigator_two_point_0/feature/presentation/constants/texts.dart';

class MyButton {
  int? id;
  String? label;
  String path;
  MyButton({this.id, this.label, required this.path});
}

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  final List<MyButton> myButton = [
    MyButton(id: 1, label: 'Go to Cart', path: "/c"),
    MyButton(id: 2, label: 'Go to Profile', path: "/d"),
    MyButton(id: 3, label: 'Go to CheckOut', path: "/e"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kHome,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: myButton.map((button) {
            return ElevatedButton(
              onPressed: () {
                context.go(button.path);
              },
              child: Text(button.label!),
            );
          }).toList(),
        ),
      ),
    );
  }
}
