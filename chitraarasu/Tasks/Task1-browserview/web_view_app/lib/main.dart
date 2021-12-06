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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final fieldText = TextEditingController();
  var search;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Example'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                borderRadius: BorderRadius.all(const Radius.circular(25.0)),
                elevation: 2.0,
                child: Container(
                  height: 45.0,
                  margin: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Expanded(
                    child: TextField(
                      controller: fieldText,
                      decoration: InputDecoration(
                        hintText: 'Paste your link',
                        border: InputBorder.none,
                      ),
                      onChanged: (val) {
                        search = val;
                      },
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                child: const Text("Open"),
                onPressed: () {
                  if (search.trim().length == 0) {
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          if (search.contains('.')) {
                            return WebViewContainer(search, null);
                          } else {
                            return WebViewContainer(
                                'https://www.google.com/search?q=$search',
                                search);
                          }
                        },
                      ),
                    );
                  }
                  fieldText.clear();
                }),
          ],
        ),
      ),
    );
  }
}
