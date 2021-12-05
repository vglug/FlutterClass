import 'package:flutter/material.dart';
import 'dart:math';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
            crossAxisCount: 5,
            children: <Widget>[
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
              customContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class customContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.red,
    );
  }
}
