import 'package:flutter/material.dart';

class EnterDetailsTextField extends StatelessWidget {
  String text;
  double height;
  TextEditingController controller;
  final ValueChanged onChanged;

  EnterDetailsTextField({
    Key? key,
    required this.text,
    required this.height,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: TextInputType.multiline,
        controller: controller,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Colors.grey)),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          filled: true,
          fillColor: Colors.white,
          hintText: text,
        ),
      ),
    );
  }
}
