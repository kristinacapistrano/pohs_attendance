import 'package:flutter/material.dart';


class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome Parent'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
