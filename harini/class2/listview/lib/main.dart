import 'package:eb_task/calculate.dart';
import 'package:eb_task/screens/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Calculate>(
      create: (BuildContext context) => Calculate(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF1c82ff),
          appBarTheme:
              const AppBarTheme(color: Color(0xFF1c82ff), elevation: 0),
          scaffoldBackgroundColor: const Color(0xFF1c82ff),
          drawerTheme: const DrawerThemeData(
            backgroundColor: Color(0xFF1c82ff),
          ),
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ),
                subtitle2: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
        home: SafeArea(child: const Home()),
      ),
    );
  }
}
