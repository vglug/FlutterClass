import 'package:custom_callback/custom_card.dart';
import 'package:flutter/material.dart';

import 'custom_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage() : super();


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void showMsg (String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo callback"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyCustomWidget(onTap: () {
                showMsg('This is called from inside the child widget');
              },),
              MyCustomCounter(
                onIncrement: (value) {
                  showMsg('Counter is incremented\nIncremented value: $value');
                },
                onDecrement: (value) {
                  showMsg('Counter is decremented\nDecremented value: $value');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



