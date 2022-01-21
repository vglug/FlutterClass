import 'package:flutter/material.dart';

class CusButton extends StatelessWidget {
  final text;
  Function onclick;
  CusButton(this.text, this.onclick);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onclick();
      },
      // style: ElevatedButton.styleFrom(primary: Colors.orange),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
