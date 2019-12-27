import 'package:flight_tickets/pages/home_page_content.dart';
import 'package:flight_tickets/pages/player_page.dart';
import 'package:flight_tickets/pages/search_page.dart';
import 'package:flight_tickets/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('App bar'),
      // ),
      body: _delegateTab(),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentTab: currentTab,
        onTap: _onTap,
      ),
    );
  }

  void _onTap(int tab) {
    setState(() {
      currentTab = tab;
    });
  }

  Widget _delegateTab() {
    switch (currentTab) {
      case 0:
        return HomePageContent();
      case 1:
        return SearchPage();
      case 2:
        return HomePageContent();
      default:
      return null;
    }
  }
}
