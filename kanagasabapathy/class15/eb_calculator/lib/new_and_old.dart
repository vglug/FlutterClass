import 'package:eb_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'calculation.dart';
import 'text_box.dart';

class NewAndOldUnit extends StatefulWidget {
  const NewAndOldUnit({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<NewAndOldUnit> createState() => _NewAndOldUnitState();
}

class _NewAndOldUnitState extends State<NewAndOldUnit> {
  String oldUnit = '';
  String newUnit = '';
  int unit = 0;
  int amount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: kContainerDecoration,
      child: Card(
        color: kCardColor,
          margin: EdgeInsets.symmetric(vertical: 74, horizontal: 30),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardTitle(),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: TextBox((value) {
                  oldUnit = value;
                }, 'Old')),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: TextBox((value) {
                  newUnit = value;
                }, 'New')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: kButtonStyle,
                onPressed: () {
                  setState(() {
                    try {
                      unit = int.parse(newUnit) - int.parse(oldUnit);
                    } catch (e) {}
      
                    if (unit < 0) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xFFD2FFFF),
                            title: Text('Check your Readings', style:  kAlertTitle,),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      amount = Calculation().getAmount(unit);
                      tariffDialog(context, amount);
                    }
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
