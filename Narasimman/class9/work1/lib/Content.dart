import 'package:flutter/material.dart';
import 'package:work1/button.dart';
import 'package:toast/toast.dart';

class Content extends StatefulWidget {
  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  var text = "";

  int count = 0;

  var buttonList = {
    "but1": "Sabapathy",
    "but2": "Narasimman",
    "but3": "Dheepan",
    "but4": "Chitraarasu",
  };

  var clickedButton = [];

  setText(int a) {
    setState(() {
      count++;
      text = "${buttonList["but$a"]}";
      clickedButton.add(text);
      if (count == 4) {
        Toast.show(
          "${clickedButton}",
          context,
        );
        clickedButton = [];
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Button(
            "1",
            () {
              setText(1);
            },
          ),
          Button(
            "2",
            () {
              setText(2);
            },
          ),
          Button(
            "3",
            () {
              setText(3);
            },
          ),
          Button(
            "4",
            () {
              setText(4);
            },
          ),
        ],
      ),
    );
  }
}
