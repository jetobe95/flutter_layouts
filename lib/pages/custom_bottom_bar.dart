import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
          child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Explorar')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Lista de deseos')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            title: Text('Ofertas')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notificaciones')
          ),
        ],
      ),
    );
  }
}