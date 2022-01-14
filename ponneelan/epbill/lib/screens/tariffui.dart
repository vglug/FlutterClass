import 'package:epbill/models/calculate.dart';
import 'package:flutter/material.dart';

class TariffPage extends StatefulWidget {
  const TariffPage({Key? key}) : super(key: key);

  @override
  _TariffPageState createState() => _TariffPageState();
}

class _TariffPageState extends State<TariffPage> {
  double units = 0;
  double? price = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.zero,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.navigate_before,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                "TARIFF CALCULATOR",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 150.0,
                  ),
                  Container(
                    height: 100,
                    width: 180,
                    child: Center(
                      child: Text(
                        "Rs.${Calculator().calc(units)}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            wordSpacing: 3,
                            fontWeight: FontWeight.bold),
                        maxLines: 1,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.lightBlue),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        double num2 = double.parse(value);
                        units = num2;
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: 'Enter Units', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            )));
  }
}
