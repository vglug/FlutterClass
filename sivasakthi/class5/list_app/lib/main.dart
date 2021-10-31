import 'package:flutter/material.dart';
import 'dart:ui';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root
// of your application.
@override
Widget build(BuildContext context) {
	return new MaterialApp(
	title: "ListView.builder",
	theme: new ThemeData(
		primarySwatch: Colors.pink
	),
	debugShowCheckedModeBanner: false,
	home: new ListViewBuilder()
	);
}
}
class ListViewBuilder extends StatelessWidget {


@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title:Text("List_App")
	),
	body: ListView.builder(
		itemCount: 10,
     itemBuilder: (con, index) {
		return ListTile(

			
      leading: CircleAvatar(),
			
			title:Text("List item $index"),
      onTap: () {
                    Navigator.push(
                        con,
                        MaterialPageRoute(
                            builder: (cc) => OtherScreen(value: '$Hi')));
                  }
      
			);
      
		}
		),
	);
}

  OtherScreen({required String value}) {}
}

mixin Hi {
}
class card_split extends StatelessWidget {
  const card_split({ Key? key }) : super(key: key);

  @override
  Card build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(bottom: 16.0),
        child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),

        ),
      ),
    );
  }
}