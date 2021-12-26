import 'package:api_call_using_object_file/CustomList.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Info>? data;

  Future<Info> getData() async {
    http.Response response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/ViluppuramGLUG/FlutterClass/main/vglug/test.json"));

    return Info.fromJson(jsonDecode(response.body));
  }

  @override
  void initState() {
    super.initState();
    data = getData();
  }

  List<Widget> listData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
        centerTitle: true,
      ),
      body: FutureBuilder<Info>(
        future: data,
        builder: (content, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              var items = snapshot.data;
              return Center(
                child: Column(
                  children: [
                    Image.network(
                      "${snapshot.data?.image}",
                      width: 100,
                      height: 100,
                    ),
                    CustomList(snapshot.data?.info),
                  ],
                ),
              );
            }
          }

          return Container();
        },
      ),
    );
  }
}
