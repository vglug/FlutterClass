import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CusTextField extends StatelessWidget {
  final String text;
  final TextBoxId;
  CusTextField(this.text, this.TextBoxId);

  static var enteredValueOne;
  static var enteredValueTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (val) {
            if (TextBoxId == 1) {
              enteredValueOne = val;
            } else if (TextBoxId == 2) {
              enteredValueTwo = val;
            } else {}
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange, width: 2.0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange, width: 2.0),
            ),
            hintText: text,
            hintStyle: const TextStyle(
              fontSize: 20.0,
              color: Color(0xD8FF9800),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        )
      ],
    );
  }
}
