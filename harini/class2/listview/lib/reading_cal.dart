import 'package:eb_task/widgets/CustPage.dart';
import 'package:flutter/material.dart';

class ReadingCalculator extends StatefulWidget {
  const ReadingCalculator({Key? key}) : super(key: key);

  @override
  State<ReadingCalculator> createState() => _ReadingCalculatorState();
}

class _ReadingCalculatorState extends State<ReadingCalculator> {
  @override
  Widget build(BuildContext context) {
    return const CustPage(
      title: "Reading Calculator",
      page: "RP",
      fHintText: "Enter old reading",
      sHintText: "Enter current reading",
    );
  }
}
