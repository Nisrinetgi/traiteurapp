import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traiteur_commande/pages/connection.dart';
import 'package:traiteur_commande/pages/home.dart';
import 'package:traiteur_commande/pages/order.dart';
import 'package:traiteur_commande/pages/place.dart';
import 'package:traiteur_commande/pages/shopping_basket.dart';


class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Place(),
    Order(),
    ShoppingBasket(),
    Connection(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        iconSize: 25,
        backgroundColor: Colors.white70,
        fixedColor: Colors.deepOrange[800],
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Accueil'), // backgroundColor: Colors.red),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            title: Text('Localisation'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Text('Commander'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Panier'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            title: Text('Connexion'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
