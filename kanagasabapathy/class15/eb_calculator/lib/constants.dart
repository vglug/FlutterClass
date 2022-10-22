import 'package:flutter/material.dart';

var kAlertTitle = TextStyle(color: Color(0xFF53BDFF), fontFamily: 'Spartan MB');

var kAlertValue = TextStyle(fontSize: 29.0, color: Color(0xFFF4A442), fontFamily: 'Spartan MB');

var kCardColor = Color(0xFF5ccce8);

var kContainerDecoration = BoxDecoration(
    gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF6F8DAC),
    Color(0xFF44CEF4),
  ],
));

var kButtonStyle = OutlinedButton.styleFrom(
  textStyle: TextStyle(fontFamily: 'Spartan MB'),
  primary: Colors.white,
  shape: StadiumBorder(),
  side: BorderSide(
    width: 2,
    color: Colors.white,
  ),
);

Future<dynamic> tariffDialog(BuildContext context, int amount) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Color(0xFFCDFFE9),
        title: Text(
          'Your Tarrif',
          style: kAlertTitle,
        ),
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rs.$amount",
                style: kAlertValue,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          ),
        ],
      );
    },
  );
}

class CardTitle extends StatelessWidget {
  const CardTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'Enter Consumed Units',
        style: TextStyle(color: Colors.white, fontSize: 19, fontFamily: 'Spartan MB'),
      ),
    );
  }
}
