import 'package:flutter/material.dart';

class ExpandDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.pink,
                  height: 100.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.lightBlueAccent,
                  height: 100.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
