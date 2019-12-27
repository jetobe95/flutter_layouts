import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = ThemeData(
      textTheme: TextTheme(
        title: TextStyle(color: Colors.white)
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: Colors.white
        )
      ),
        // textTheme: TextTheme(subhead: TextStyle(color: Colors.white)),
        // accentTextTheme: TextTheme(body1: TextStyle(color: Colors.white)),
        // appBarTheme: AppBarTheme(
        //     textTheme: TextTheme(subhead: TextStyle(color: Colors.white)),
        //     elevation: 0,
        //     actionsIconTheme: IconThemeData(),
        //     color: Colors.red),
        primaryColor: Color(0xff18191A),
        // scaffoldBackgroundColor: Color(0xff121212),
      
        // dialogBackgroundColor: Color(0xff121212),
        // textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
        );
    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      Row(
        children: <Widget>[
          GestureDetector(
            child: Text('Cancelar'),
            onTap: () => close(context, null),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.photo),
          SizedBox(
            width: 10.0,
          ),
        ],
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Color(0xff121212),
      child: ListView(
        children: <Widget>[
          SizedBox(height: 15.0,),
          Text(
            'Búsquedas recientes',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
