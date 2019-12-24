import 'package:flight_tickets/clip/custom_shape_clipper.dart';
import 'package:flutter/material.dart';

Color firstColor = Color(0xfff47b15);
Color secondColor = Color(0xffef772c);

class FlightTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
          ),
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      'Search results',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 20.0,),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  elevation: 10.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  controller: TextEditingController(text: 'Boston (BOS)'),
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                                Divider(),
                                TextField(
                                  controller: TextEditingController(text: 'New York (JFK)'),

                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Icon(
                            Icons.import_export,
                            size: 30.0,
                          ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
