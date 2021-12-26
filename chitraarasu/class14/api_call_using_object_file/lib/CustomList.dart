import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final info;
  CustomList(this.info);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (var a in info) Text(a),
    ]);
  }
}
