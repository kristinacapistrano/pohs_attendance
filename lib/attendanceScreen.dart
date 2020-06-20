import 'package:flutter/material.dart';
import 'package:pohsattendance/dashboard.dart';

/************ HOME ***************/
class AttendanceScreen extends StatefulWidget {
  AttendanceScreen({Key key}) : super(key: key);

  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}


class _AttendanceScreenState extends State<StatefulWidget>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//  static const List<Widget> _widgetOptions = <Widget>[
//    Text(
//      'Index 0: Home',
//      style: optionStyle,
//
//    ),
//    Text(
//      'Index 1: Attendance',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 2: Help',
//      style: optionStyle,
//    ),
//  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });

    if ( index == 0){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardScreen()));
    }else if ( index == 1){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => AttendanceScreen()));

    };

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance: Parent View'),
      ),
      body: Center(
//        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('Attendance'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            title: Text('Help'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
