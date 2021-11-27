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
    "but1": "chitraarasu",
    "but2": "saba",
    "but3": "narsimman",
    "but4": "dheepan",
  };

  var clickedButton = [];

  setText(String a) {
    setState(() {
      count++;
      text = a;
      clickedButton.add(text);
      if (count == 4) {
        Toast.show(
          "${clickedButton}",
          context,
        );
        clickedButton = [];
        count = 0;
        text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var keys = buttonList.keys;
    var values = buttonList.values;

    Widget ButtonGen() {
      List<Button> buttonListShow = [];
      for (int a = 0; a < buttonList.length; a++) {
        buttonListShow.add(
          Button(
            keys.elementAt(a),
            () {
              setText(values.elementAt(a));
            },
          ),
        );
      }
      return Column(
        children: buttonListShow,
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          ButtonGen(),
        ],
      ),
    );
  }
}
