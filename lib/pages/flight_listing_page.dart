import 'package:flight_tickets/pages/flight_bottom_part.dart';
import 'package:flight_tickets/pages/flight_top_part.dart';
import 'package:flutter/material.dart';

class FlightListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Resultados de busqueda'),
      // ),
      body: Column(
        children: <Widget>[
          FlightTopPart(),
          FlightBottomPart()
        ],
      ),
    );
  }
}