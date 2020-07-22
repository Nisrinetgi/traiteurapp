import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[800],
        title: Text('Commander'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Container(
            color: Colors.brown[900],
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Donuts au chocolat',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 3.0,
                  fontSize:20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            child: Image.asset('assets/Donut3.jpeg'),
          ),

          Container(
            color: Colors.pink,
            padding: EdgeInsets.all(15.0),
            child: Text(
                'Donuts à la fraise',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 3.0,
                  fontSize:20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

        ],
      ),

    );
  }
}




