import 'package:flutter/material.dart';

class MyCustomCounter extends StatefulWidget {

  final MyIntCallback onIncrement; // new code
  final MyIntCallback onDecrement; // new code
  const MyCustomCounter({required this.onIncrement, required this.onDecrement});

  @override
  _MyCustomCounterState createState() => _MyCustomCounterState();
}

typedef MyIntCallback(int);

class _MyCustomCounterState extends State<MyCustomCounter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.remove_circle),
          onPressed: () {
            setState(() {
              _counter--;
            });
            widget.onDecrement(_counter);
          },
        ),
        Text(_counter.toString()),
        IconButton(
          icon: const Icon(Icons.add_circle),
          onPressed: () {
            setState(() {
              _counter++;
            });
            widget.onIncrement(_counter);
          },
        ),
      ],
    );
  }
}