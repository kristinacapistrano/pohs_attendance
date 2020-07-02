import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/krist/StudioProjects/pohs_attendance/lib/screens/dashboard.dart';

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
    const gap = 5.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Parent Mode'),
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(top: 75),

        children: <Widget>[

          Text('Attendance',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
          ),),
         DataTable(
             horizontalMargin: 40,

             columns: const <DataColumn>[
               DataColumn(label: Text('Days')),
               DataColumn(label: Text('Hours')),
               DataColumn(label: Text('Minutes'))
               ],
           rows: const <DataRow>[
             DataRow(
               cells: <DataCell>[
                 DataCell(Text('Monday')),
                 DataCell(Text('19')),
                 DataCell(Text('19'))

               ],
             ),
             DataRow(
               cells: <DataCell>[
                 DataCell(Text('Tuesday')),
                 DataCell(Text('19')),
                 DataCell(Text('19'))

               ],
             ),
             DataRow(
               cells: <DataCell>[
                 DataCell(Text('Wednesday')),
                 DataCell(Text('19')),
                 DataCell(Text('19'))

               ],
             ),
             DataRow(
               cells: <DataCell>[
                 DataCell(Text('Thursday')),
                 DataCell(Text('19')),
                 DataCell(Text('19'))

               ],
             ),
             DataRow(
               cells: <DataCell>[
                 DataCell(Text('Friday')),
                 DataCell(Text('19')),
                 DataCell(Text('19'))

               ],
             ),
             DataRow(
               cells: <DataCell>[
                 DataCell(Text('Saturday')),
                 DataCell(Text('19')),
                 DataCell(Text('19'))

               ],
             ),
             DataRow(
               cells: <DataCell>[
                 DataCell(Text('Sunday')),
                 DataCell(Text('19')),
                 DataCell(Text('19'))

               ],
             )
           ]

         )

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
        currentIndex: 1,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
