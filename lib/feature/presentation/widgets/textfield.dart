import 'package:flutter/material.dart';

class EnterDetailsTextField extends StatelessWidget {
  String text;
  double height;
  TextEditingController controller;
  String Function(String? validate) validator;
 // void Function(String) onchange;

  EnterDetailsTextField({
    Key? key,
    required this.validator,
    required this.text,
    required this.height,
   // required this.onchange,
    required this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        controller: controller,
       
      validator: validator,
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
