import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextBox extends StatelessWidget {
  TextBox(this.onChanged, this.labelText);

  final String labelText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: labelText,
        hintStyle: TextStyle(
          color: Color(0xFFA0AFC5),
          fontFamily: 'Spartan MB'
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow((RegExp("[.0-9]"))),
      ],
      onChanged: onChanged,
    );
  }
}
