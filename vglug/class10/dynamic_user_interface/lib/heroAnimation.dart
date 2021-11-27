import 'package:dynamic_user_interface/main.dart';
import 'package:flutter/material.dart';

class heroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Hero(
            tag: 'logo',
            child: Container(
              height: 200.0,
              child: Image.network(
                  'https://villupuramglug.files.wordpress.com/2017/11/vpm_original.png'),
            ),
          ),
        ],
      ),
    );
  }
}
