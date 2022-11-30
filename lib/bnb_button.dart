import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog/alarm_page.dart';
import 'package:widget_catalog/grid_view.dart';
import 'package:widget_catalog/new_grid.dart';
import 'package:widget_catalog/new_images.dart';
import 'package:widget_catalog/new_list.dart';

class bnbButton extends StatefulWidget {
  const bnbButton({Key? key}) : super(key: key);

  @override
  State<bnbButton> createState() => _bnbButtonState();
}

class _bnbButtonState extends State<bnbButton> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionstyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 50);
  final List<Widget> _widgetoption = <Widget>[
    const AlarmPage(),
    GridViewPage(),
    const NewImage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoption[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_outlined), label: "Balance"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: "Account"),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
