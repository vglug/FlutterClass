import 'package:flutter/material.dart';
import 'package:providerdemo/add_item.dart';
import 'package:providerdemo/list.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/provider/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Controller>(
      //1
      create: (BuildContext context) => Controller(), //2
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddItem()));
            },
            child: Text("Add item"),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CusList()));
            },
            child: Text("Open list"),
          ),
        ],
      ),
    );
  }
}
