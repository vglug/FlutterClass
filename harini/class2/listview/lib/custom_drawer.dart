import 'package:eb_task/screens/reading_cal.dart';
import 'package:eb_task/screens/tariff_cal.dart';
import 'package:flutter/material.dart';

import 'custom_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 80,
              left: 20,
              bottom: 20,
            ),
            alignment: Alignment.centerLeft,
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 30.0,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Calculator',
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(
            color: Colors.white,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TariffCal();
                  },
                ),
              );
            },
            child: const CustomTile(
              icon: Icon(
                Icons.calculate,
                color: Color(0xFF1c82ff),
              ),
              title: 'Tariff Calculator',
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ReadingCalculator();
                  },
                ),
              );
            },
            child: const CustomTile(
              icon: Icon(
                Icons.assignment_outlined,
                color: Color(0xFF1c82ff),
              ),
              title: 'Reading Calculator',
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
