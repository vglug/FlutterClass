import 'package:flutter/material.dart';

class OB extends StatelessWidget {
  final text;
  final icon;
  Function onclick;
  OB(this.text, this.icon, this.onclick);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onclick();
      },
      child: Container(
        child: Row(
          children: [
            icon != null ? Icon(Icons.star) : SizedBox(),
            SizedBox(
              width: icon != null ? 10.0 : 0.0,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
