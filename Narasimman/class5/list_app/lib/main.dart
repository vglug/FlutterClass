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
    "Anuvasanthan",
    "Arulmozhi T",
    "Arunkumar S",
    "Chabeer Absal",
    "Chitraarasu",
    "Darwin Gnanadasan R",
    "Harini.G",
    "Kanagasabapathy R",
    "Kanimozhi V",
    "Karthik s",
    "KumaresH H",
    "Narasimman.S",
    "Naveenchandramouli B",
    "Ponneelan R",
    "Prasanth V",
    "Prathap",
    "Ramamoorthi B",
    "Robert bellarmin V",
    "Santhiya M",
    "Sangeetha",
    "Sathish",
    "Sivasakthi P",
    "Tamizhselvi S",
    "Thamizharasan.M",
    "Vaibhavi shri.A.V",
    "Venkatesan",
    "Vignesh D"
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
            margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
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
