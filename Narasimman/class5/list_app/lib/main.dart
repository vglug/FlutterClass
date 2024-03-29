import 'dart:math';

import 'package:flutter/material.dart';
import 'package:list_app/details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(backgroundColor: Colors.lightBlueAccent),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> names = [
    "Amutha. K",
    "Abinaya.N",
    "Chitraarasu",
    "Harini.G",
    "Kanagasabapathy R",
    "Kanimozhi V",
    "Narasimman.S",
    "Ponneelan R",
    "Prathap",
    "Santhiya M",
    "Sangeetha",
    "Sivasakthi P",
    "Tamizhselvi S",
    "Thamizharasan.M",
    "Vaibhavi shri.A.V",
    "Venkatesan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name List'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          int randomIndex = Random().nextInt(names.length);
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Hi, ${names[randomIndex]}'),
                  content: Text('Welcome to VGLUG'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    )
                  ],
                );
              });
        },
        label: Text('Random Name'),
        icon: Icon(Icons.search),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
            margin: EdgeInsets.only(top: 6, left: 11, right: 11, bottom: 6),
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg"),
                ),
                // leading: Icon(Icons.list),
                title: Text('Hi ${names[index]}'),
                subtitle: Text('Welcome ${names[index]}'),
                trailing: Icon(Icons.list),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DS(names[index]);
                  }));
                }),
          );
        },
      ),
    );
  }
}
