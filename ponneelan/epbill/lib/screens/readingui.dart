import 'package:flutter/material.dart';
import 'package:epbill/models/calculate.dart';

class Readingpage extends StatefulWidget {
  const Readingpage({Key? key}) : super(key: key);

  @override
  _ReadingpageState createState() => _ReadingpageState();
}

class _ReadingpageState extends State<Readingpage> {
  // ignore: non_constant_identifier_names
  double _prev_reading = 0;
  // ignore: non_constant_identifier_names
  double _curr_reading = 0;
  double? price = 0;
  @override
  Widget build(BuildContext context) {
    setState(() {});
    return SafeArea(
        minimum: EdgeInsets.zero,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.navigate_before,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                "READING CALCULATOR",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    height: 100,
                    width: 180,
                    child: Center(
                      child: Text(
                        "Rs.${Calculator().calc(_curr_reading - _prev_reading)}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            wordSpacing: 3,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightBlue,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextField(
                    onChanged: (_value) {
                      setState(() {
                        double _num = double.parse(_value);
                        _prev_reading = _num;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: 'Enter Previous Reading. as Defaults 0',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextField(
                    onChanged: (_value) {
                      setState(() {
                        double _num1 = double.parse(_value);
                        _curr_reading = _num1;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: 'Enter Current Reading',
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            )));
  }
}
