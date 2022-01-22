

import "package:flutter/material.dart";

import "dart:math";

void main() => runApp(MaterialApp(
    title: 'eb bill Calc',
    theme: ThemeData(
      primaryColor: Colors.pink,
      accentColor: Colors.pinkAccent,
    ),
    home: HomeScreen()));

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String _ebResult = "";

  final TextEditingController _EnterFinalReading = TextEditingController();
  final TextEditingController _EnterInitialReading = TextEditingController();

  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("EB Bill"), centerTitle:true,elevation: 0.0),
        body: Center(
            child: Container(
                child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  
                  controller: _EnterFinalReading,
                  decoration: InputDecoration(labelText: "Enter Final Reading",fillColor: Colors.yellow),
                  keyboardType: TextInputType.number,
                )),
            Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: _EnterInitialReading,
                  decoration: InputDecoration(labelText: "Enter Initial Reading",fillColor: Colors.red),
                  keyboardType: TextInputType.number,
                )),
            Flexible(fit: FlexFit.loose, child: FlatButton(onPressed: _handleCalculation, child: Text("CALCULATE"), color: Colors.redAccent, textColor: Colors.white, padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 24.0, right: 24.0))),
            ebResultsWidget(_ebResult)
          ],
        ))));
  }

  void _handleCalculation() {
    
    

    double A = 0.0;
    int c = 0;
    int f = int.parse(_EnterFinalReading.text);
    int i = int.parse(_EnterInitialReading.text);

    A = f-i/24;

    _ebResult = A.toStringAsFixed(2);

    setState(() {});
  }

  Widget ebResultsWidget(ebResult) {
    bool canShow = false;
    String _ebResult = ebResult;

    if (_ebResult.length > 0) {
      canShow = true;
    }
    return Container(
        margin: EdgeInsets.only(top: 40.0),
        child: canShow
            ? Column(children: [
                Text("EB BILL", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                Container(child: Text(_ebResult, style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)))
              ])
            : Container());
  }
}