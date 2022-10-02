import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/provider/controller.dart';

class AddItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add item"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (val) {
              data = val;
            },
          ),
          TextButton(
            onPressed: () {
              Provider.of<Controller>(context, listen: false).addItem(data);
              // Navigator.pop(context, data);
            },
            child: Text("Add"),
          ),
        ],
      ),
    );
  }
}
