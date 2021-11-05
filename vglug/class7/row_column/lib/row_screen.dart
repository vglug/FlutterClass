import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Row UI Screen"),
        ),
        body: Container(
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.orange,
                child: const FlutterLogo(
                  size: 50.0,
                ),
              ),
              Container(
                color: Colors.blue,
                child: const FlutterLogo(
                  size: 100.0,
                ),
              ),
              Container(
                color: Colors.purple,
                child: const FlutterLogo(
                  size: 50.0,
                ),
              ),
            ],
          ),
        ));
  }
}
