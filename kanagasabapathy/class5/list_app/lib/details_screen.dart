import 'package:flutter/material.dart';

class DS extends StatelessWidget {
  final String name;

  DS(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Container(
        child: Center(child: Text("Hi $name")),
      ),
    );
  }
}