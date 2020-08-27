import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'attendanceScreen.dart';
/************ HELP ***************/
class HelpScreen extends StatefulWidget {
  HelpScreen({Key key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}


class _HelpScreenState extends State<StatefulWidget>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('tapped');
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
        backgroundColor: Colors.red,
        title: const Text('Help: Parent view'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:40),
            child: Image.asset('assets/mascot1.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 25, bottom: 20),
            child: Text('You are logged in as a parent',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(

            padding: const EdgeInsets.only( left : 40, top: 25, bottom: 50),
            child: FloatingActionButton.extended(
              onPressed: () {
                print('Approved');
              },
              label: Text('Send Message'),
              icon: Icon(Icons.message),
              backgroundColor: Colors.green,

            ),
          ),

        ],
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
        currentIndex: 2,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,

      ),
    );
  }
}
