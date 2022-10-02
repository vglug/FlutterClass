import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/provider/controller.dart';

class CusList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: ListView.builder(
        itemCount: Provider.of<Controller>(context).items.length,
        itemBuilder: (context, index) => Text(
          Provider.of<Controller>(context).items[index],
        ),
      ),
    );
  }
}
