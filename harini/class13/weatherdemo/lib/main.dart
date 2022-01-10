import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Flutter Weather App'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('New York', style: new TextStyle(color: Colors.white)),
                    Text('Sunny', style: new TextStyle(color: Colors.white, fontSize: 32.0)),
                    Text('72°F',  style: new TextStyle(color: Colors.white)),
                    Image.network('https://openweathermap.org/img/w/01d.png'),
                    Text('Jun 28, 2018', style: new TextStyle(color: Colors.white)),
                    Text('18:30', style: new TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: new Icon(Icons.refresh),
                  tooltip: 'Refresh',
                  onPressed: () => null,
                  color: Colors.white,
                ),
              )
            ]
          )
        )
      ),
    );
  }
}