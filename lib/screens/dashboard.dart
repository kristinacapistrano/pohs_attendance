import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pohsattendance/screens/login.dart';
import 'attendanceScreen.dart';
import 'helpScreen.dart';
/************ HOME ***************/
class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}


class _DashboardScreenState extends State<StatefulWidget>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('tapped');
    });


    if ( index == 1){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => AttendanceScreen()));

    }
    else if ( index == 2){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HelpScreen()));

    };

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Home: Parent view'),
        actions: <Widget>[
          Padding(padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => UserLogin()));
            },
            child: Icon(Icons.exit_to_app),
          ),)
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/mascot1.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text('You are logged in as a parent',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          ListTile(
            isThreeLine: true,
            leading: Icon(Icons.date_range),
            title: Text('Current Date: July 7, 2020 Tuesday'),
            subtitle: Text('Attendance is due for approval by Sunday 11:59 PM.',
              style: TextStyle(
                  color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,

      ),
    );
  }
}
