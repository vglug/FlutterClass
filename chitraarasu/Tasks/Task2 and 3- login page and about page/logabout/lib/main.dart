import 'package:flutter/material.dart';
import 'package:logabout/about.dart';
import 'package:logabout/widgets/button.dart';
import 'package:logabout/widgets/textField.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nav() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => About(),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF1c1c1c),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: Image(
                  width: 125,
                  height: 125,
                  image: AssetImage("images/logo.png"),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'Wiki Login',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CusTextField("Username"),
              SizedBox(
                height: 10.0,
              ),
              CusTextField("Password"),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  nav();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                  child: Text(
                "Forgot your password?",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                ),
              )),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OB("Join Wiki", null, nav),
                  OB("Skip Login", null, nav),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
