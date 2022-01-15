import 'package:flutter/material.dart';
import 'navigation_bar.dart';

void main() {
  runApp(const EBCalculator());
}

class EBCalculator extends StatelessWidget {
  const EBCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EB Calculator',
      theme: ThemeData(
        primaryColor: Color(0xFF1916A5),
        //scaffoldBackgroundColor: Color(0xFF4D56B9),

      ),
      home: const NavBar(),
    );
  }
}
