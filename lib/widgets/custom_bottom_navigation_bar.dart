import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentTab;
  final Function(int) onTap;
  CustomBottomNavigationBar({this.currentTab, this.onTap});

  @override
  Widget build(BuildContext context) {
  

    return BottomNavigationBar(
      unselectedItemColor: Colors.white.withOpacity(0.16),
      onTap: onTap,
      showUnselectedLabels: true,
      currentIndex: currentTab,
      unselectedIconTheme:
          IconThemeData(color: Colors.white.withOpacity(0.4), size: 23),
      unselectedLabelStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
      backgroundColor: Color(0xff282728),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          activeIcon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text(
            'Inicio',
            // style: TextStyle(
            //     color: currentTab == 0
            //         ? Colors.white
            //         : Colors.white.withOpacity(0.16)),
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Buscar',
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text(
              'Tu Biblioteca',
            )),
      ],
    );
  }
}
