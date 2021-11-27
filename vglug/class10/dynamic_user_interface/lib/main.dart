import 'package:dynamic_user_interface/expanded.dart';
import 'package:dynamic_user_interface/expansionTile.dart';
import 'package:dynamic_user_interface/gridView.dart';
import 'package:dynamic_user_interface/heroAnimation.dart';
import 'package:dynamic_user_interface/sharedPreference.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic User Interface"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                child: Image.network(
                    'https://villupuramglug.files.wordpress.com/2017/11/vpm_original.png'),
                height: 100.0,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            EButton(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return GridViewPage();
                }));
              },
              title: "Grid View",
            ),
            EButton(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ET();
                }));
              },
              title: "ExpansionTile",
            ),
            EButton(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ExpandDemo();
                }));
              },
              title: "Expanded widget",
            ),
            EButton(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return heroDemo();
                }));
              },
              title: "Hero Animation",
            ),
            EButton(
              onClick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return SP();
                }));
              },
              title: "Shared Preferences",
            ),
          ],
        ),
      ),
    );
  }
}

class EButton extends StatelessWidget {
  final title;
  Function onClick;
  EButton({required this.title, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          onClick();
        },
        child: Text(title),
      ),
    );
  }
}
