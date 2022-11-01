import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyButton {
  int? id;
  String? label;
  String path;
  MyButton({this.id, this.label, required this.path});
}

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<MyButton> myButton = [
    MyButton(id: 1, label: 'Go to Cart', path: "/c"),
    MyButton(id: 2, label: 'Go to Profile', path: "/d"),
    MyButton(id: 3, label: 'Go to CheckOut', path: "/e"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Home'),
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
