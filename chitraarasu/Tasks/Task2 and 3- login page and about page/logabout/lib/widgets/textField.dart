import 'package:flutter/material.dart';

class CusTextField extends StatelessWidget {
  final text;
  CusTextField(this.text);
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(const Radius.circular(5.0)),
      child: TextField(
        decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
          hintText: text,
          suffixIcon: text == "Password" ? Icon(Icons.remove_red_eye) : null,
        ),
      ),
    );
  }
}
