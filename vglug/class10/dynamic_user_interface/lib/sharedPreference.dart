import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SP extends StatefulWidget {
  const SP({Key? key}) : super(key: key);

  @override
  State<SP> createState() => _SPState();
}

class _SPState extends State<SP> {
  String title = "";

  @override
  void initState() {
    getPrevInput();
    super.initState();
  }

  getPrevInput() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (await prefs.getString('prevInput') != null) {
      setState(() {
        title = prefs.getString('prevInput')!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (val) async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setString('prevInput', val);
              setState(() {
                title = val;
              });
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(title),
        ],
      ),
    );
  }
}
