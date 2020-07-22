import 'package:flutter/material.dart';

class Place extends StatefulWidget {
  @override
  _PlaceState createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
        title: Text('Localisation'),
        centerTitle: true,
    ),
    );
  }
}
