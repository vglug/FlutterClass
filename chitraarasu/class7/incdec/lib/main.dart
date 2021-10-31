import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$counter'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Text(
                      "Increment",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: Text(
                      "Decrement",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter = 0;
            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
