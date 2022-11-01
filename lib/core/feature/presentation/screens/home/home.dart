import 'package:flutter/material.dart';
class MyButton {
  int? id;
  String? label;
  MyButton({this.id,this.label});
}

class Home extends StatefulWidget {
  Home({
    Key? key,
    required this.password,
    required this.onTap,
    required this.email,
    required this.selectedPage,
  }) : super(key: key);
  String email;
  String password;
  final ValueChanged<String> onTap;
  final ValueChanged<int> selectedPage;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<MyButton> myButton = [
    MyButton(id: 1, label: 'Go to Cart'),
    MyButton(id: 2, label: 'Go to Profile'),
    MyButton(id: 3, label: 'Go to CheckOut'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('${widget.email}: Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: myButton.map((button) {
            return ElevatedButton(
                onPressed: () {
                  setState(() {
                      // selectedPage = button.id;
                      widget.selectedPage(button.id!);
                   },
                  );
                },
              child: Text(button.label!),
            );
          }).toList(),
        ),
      ),
    );
  }
}