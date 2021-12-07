import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("About"),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Hero(
              tag: 'logo',
              child: Image(
                image: AssetImage("images/logo.png"),
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text("Spell4Wiki"),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Spell4Wiki is a mobile application to record and upload audio for Wiltionary words to Wikimedia commons. This ia act as a Wiki-Dictionary.",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "version: 1.2.0 & License : GPLv3",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Rate the App"),
                        ],
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text("Share the App"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(),
            ListView.builder(itemBuilder: (context, index) {
              return Container();
            })
          ],
        ),
      ),
    );
  }
}
