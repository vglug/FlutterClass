
import 'package:flutter/material.dart';
import 'new_and_old.dart';
import 'current_consumed.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    NewAndOldUnit(title: ''),
    CurrentConsumed(title: ''),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
            child: const Text(
          'EB Calculator',
          style: TextStyle(fontFamily: 'Spartan MB',fontSize: 25.0),
        )),
        backgroundColor: Color(0xFF6F8DAC),
        foregroundColor: Colors.white
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 30.0,
         backgroundColor:  Color(0xFF44CEF4),
         selectedIconTheme: IconThemeData(color: Color(0xFFBFCFEA)),
         unselectedIconTheme: IconThemeData(color: Color(0xFF6F8DAC)),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            tooltip: '',
            
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: '',
            tooltip: '',
           
           
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
