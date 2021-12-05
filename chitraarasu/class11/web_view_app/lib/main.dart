import 'package:flutter/material.dart';
import 'package:web_view_app/web_view_load.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      title: "WebView Example",
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Example'),
      ),
      body: Container(
          alignment: Alignment.center,
          // height: 600,
          // the most important part of this example
          child: ElevatedButton(
              child: const Text("Open - https://vglug.org"),
              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => WebViewContainer("https://vglug.org"))),
          )
      )
    );
  }
}

