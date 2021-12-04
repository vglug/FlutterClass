import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final title;
  Function onClick;

  Button(this.title, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {
          onClick();
        },
        child: Text(title),
      ),
    );
  }
}
