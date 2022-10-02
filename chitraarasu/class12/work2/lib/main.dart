import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  var data = null;

  getData() async {
    http.Response response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/ViluppuramGLUG/FlutterClass/main/vglug/test.json"));
    if (response.statusCode == 200) {
      var rawdata = response.body;
      var rdata = await jsonDecode(rawdata);
      setState(() {
        data = rdata;
      });
    } else {
      print(response.statusCode);
    }
    setData();
  }

  List<Widget> listData = [];

  setData() {
    for (var arraydata in data["info"]) {
      listData.add(Text("$arraydata"));
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API EXAMPLE"),
        centerTitle: true,
      ),
      body: data == null
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    data["image"],
                    width: 200.0,
                  ),
                  Column(
                    children: listData,
                  )
                ],
              ),
            ),
    );
  }
}
