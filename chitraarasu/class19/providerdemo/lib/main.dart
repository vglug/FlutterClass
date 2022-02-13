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
      create: (BuildContext context) => Controller(),
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
  TextEditingController _controller = TextEditingController();
  onSubmit() {
    Navigator.pop(context, _controller.value.text.trim());
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("File name"),
          content: TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Enter file name",
            ),
            controller: _controller,
            onSubmitted: (_) {
              onSubmit();
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                onSubmit();
              },
              child: Text("Add"),
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              var val = await Navigator.push(
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
