import 'package:eb_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'calculation.dart';
import 'text_box.dart';

class CurrentConsumed extends StatefulWidget {
  const CurrentConsumed({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CurrentConsumed> createState() => _CurrentConsumedState();
}

class _CurrentConsumedState extends State<CurrentConsumed> {
  int unit = 0;
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: kContainerDecoration,
      child: Card(
        
       color: kCardColor,
        margin: EdgeInsets.symmetric(vertical: 110, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardTitle(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30.0, vertical: 15.0),
              child: TextBox(
                (value) {
                  try {
                    unit = int.parse(value);
                  } catch (e) {}
                },
                'Current Consumed',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: kButtonStyle,
                onPressed: () {
                  setState(() {
                    amount = Calculation().getAmount(unit);
                    tariffDialog(context, amount);
                  });
                },
                child: Text("Calculate Amount"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


