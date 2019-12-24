import 'package:flight_tickets/clip/custom_shape_clipper.dart';
import 'package:flight_tickets/models/flight_model.dart';
import 'package:flutter/material.dart';

Color firstColor = Color(0xfff47b15);
Color secondColor = Color(0xffef772c);

class FlightBottomPart extends StatelessWidget {
  final List<FlightModel> flights = [
    FlightModel(
        aerolineName: 'Cathalic Pacific',
        discount: '50%',
        monthYear: 'June 2010',
        newPrice: '\$20,000',
        oldPrice: '\$40,000',
        rating: '4.0'),
    FlightModel(
        aerolineName: 'Cathalic Pacific',
        discount: '50%',
        monthYear: 'June 2010',
        newPrice: '\$60,000',
        oldPrice: '\$40,000',
        rating: '4.0'),
    FlightModel(
        aerolineName: 'Cathalic Pacific',
        discount: '50%',
        monthYear: 'June 2010',
        newPrice: '\$20,000',
        oldPrice: '\$40,000',
        rating: '4.0'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Las mejores ofertas del 2019'),
          ListView.builder(
            shrinkWrap: true,
            itemCount: flights.length,
            itemBuilder: (context, index) {
              return _buildFlight(flights[index]);
            },
          )
        ],
      ),
    );
  }

  Widget _buildFlight(FlightModel flightModel) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          padding:
              EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0, right: 10.0),
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.7)),
              borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    flightModel.newPrice,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(${flightModel.oldPrice})',
                    style: TextStyle(
                        color: Colors.grey[500],
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Chip(
                    backgroundColor: Colors.grey.withOpacity(0.15),
                    label: Row(
                      children: <Widget>[
                        Icon(
                          Icons.movie,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(flightModel.monthYear)
                      ],
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey.withOpacity(0.15),
                    label: Row(
                      children: <Widget>[
                        Icon(
                          Icons.flight_land,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(flightModel.aerolineName)
                      ],
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.grey.withOpacity(0.15),
                    label: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(flightModel.rating)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
            right: -10,
            top: 20,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
                decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  flightModel.discount,
                  style: TextStyle(fontWeight: FontWeight.bold,color: firstColor,fontSize: 14.0),
                )))
      ],
    );
  }
}
