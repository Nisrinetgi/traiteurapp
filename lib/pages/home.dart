import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
        title: Text('Traiteur'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('WELCOME',
          style: TextStyle(
              color: Colors.amber,
              letterSpacing: 3.0,
              fontSize:50.0,
              fontWeight: FontWeight.bold
          ),
      )
      ),
    );
  }
}