import 'dart:math';

import 'package:flutter/material.dart';
import 'package:list_app/details_screen.dart';

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
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

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
        appBar: AppBar(title: const Text("List App Example")),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: ListTile(
                leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png")),
                title: Text(names[index]),
                subtitle: Text("About ${names[index]}"),
                trailing: const Icon(Icons.list),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(name: names[index])),
                  );
                },
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton.extended(
            label: const Text('Get Random Name'),
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              int randomIndex = Random().nextInt(names.length);

              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Hi, ${names[randomIndex]}"),
                      content: const Text("Welcome to VGLUG"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        )
                      ],
                    );
                  });
            }));
  }
}
