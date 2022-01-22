import 'package:eb_task/widgets/CustPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TariffCal extends StatefulWidget {
  const TariffCal({Key? key}) : super(key: key);

  @override
  State<TariffCal> createState() => _TariffCalState();
}

class _TariffCalState extends State<TariffCal> {
  @override
  Widget build(BuildContext context) {
    return const CustPage(
      title: "Tariff Calculator",
      page: "TP",
      fHintText: "Enter a reading",
    );
  }
}
