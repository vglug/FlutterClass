import 'package:flutter/material.dart';

class ET extends StatelessWidget {
  var month = {
    'January': '31',
    'February': '28/29',
    'March': '31',
    'April': '30',
    'May': '31',
    'June': '30',
    'July': '31',
    'August': '31',
    'September': '30',
    'October': '31',
    'November': '30',
    'December': '31',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return expansionTile(
              title: month.keys.elementAt(index),
              subTitle: month.values.elementAt(index),
            );
          },
          itemCount: month.length,
        ),
      ),
    );
  }
}

class expansionTile extends StatelessWidget {
  final title;
  final subTitle;

  expansionTile({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              "There are $subTitle days in the month of $title",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
