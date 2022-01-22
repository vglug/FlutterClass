import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Sangeetha Flutter Weather App'),
          ),
          body: Center(
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text('Thirukkanur', style: new TextStyle(color: Colors.white)),
                        Text('Sunny', style: new TextStyle(color: Colors.white, fontSize: 32.0)),
                        Text('29°C', style: new TextStyle(color: Colors.white)),
                        Image.network('https://openweathermap.org/img/w/01d.png'),
                        Text('Jan 11, 2022', style: new TextStyle(color: Colors.white)),
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
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200.0,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Thirukkanur', style: new TextStyle(color: Colors.black)),
                                  Text('Sunny', style: new TextStyle(color: Colors.black, fontSize: 24.0)),
                                  Text('29°C', style: new TextStyle(color: Colors.black)),
                                  Image.network('https://openweathermap.org/img/w/01d.png'),
                                  Text('Jan 11, 2022', style: new TextStyle(color: Colors.black)),
                                  Text('18:30', style: new TextStyle(color: Colors.black)),
                                ],
                              ),
                            ),
                          )),
                ),
              ),
            )
          ]))),
    );
  }
}
