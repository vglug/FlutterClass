import 'package:eb_task/screens/reading_cal.dart';
import 'package:eb_task/screens/tariff_cal.dart';
import 'package:eb_task/widgets/custom_card.dart';
import 'package:eb_task/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "EB-Bill Calculator",
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: Colors.white),
        ),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          const Expanded(
            child: Image(
              image: AssetImage("assets/images/logo.png"),
              width: double.infinity,
            ),
          ),
          CustomCard(
            title: 'Tariff Calculator',
            imageUrl: 'assets/images/cal1.png',
            nav: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TariffCal();
                  },
                ),
              );
            },
          ),
          CustomCard(
            imageUrl: 'assets/images/cal2.png',
            title: 'Reading Calculator',
            nav: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ReadingCalculator();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
