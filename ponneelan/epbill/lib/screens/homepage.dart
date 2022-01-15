import 'package:epbill/screens/readingui.dart';
import 'package:flutter/material.dart';
import 'package:epbill/screens/tariffui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            //drawer: Drawer(),
            backgroundColor: Colors.lightBlue,
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "BP BILL CALCULATOR",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 200,
                      width: 300,
                      color: Colors.lightBlue,
                      child: Image.asset('images/tariff.png'),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TariffPage()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Tariff Calculator",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 200,
                      width: 300,
                      color: Colors.lightBlue,
                      child: Image.asset('images/reading.png'),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Readingpage()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Reading Calculator",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )));
  }
}
