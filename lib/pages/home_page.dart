import 'package:flight_tickets/clip/custom_shape_clipper.dart';
import 'package:flight_tickets/images_assets.dart';
import 'package:flight_tickets/models/city_card_model.dart';
import 'package:flight_tickets/pages/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

Color firstColor = Color(0xfff47b15);
Color secondColor = Color(0xffef772c);

List<String> locations = [
  'Boston (BOS)',
  'Barranquilla (BAQ)',
  'Valledupar (VUP)'
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      // appBar: AppBar(
      //   title: Text('Vuelos'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HomeScreenTopPart(),
          Expanded(child: HomeScreenBottomPart())
        ],
      ),
    );
  }
}

class HomeScreenBottomPart extends StatelessWidget {
  final List<CityCardModel> cityCards = [
    CityCardModel(
        assetImage: Images.athens,
        cityName: 'Atenas',
        discount: '50%',
        monthYear: 'Mar 2019',
        newPrice: '\$10,000',
        oldPrice: '\$20,000'),
    CityCardModel(
        assetImage: Images.lasvegas,
        cityName: 'Las Vegas',
        discount: '20%',
        monthYear: 'Feb 2019',
        newPrice: '\$40,000',
        oldPrice: '\$50,000'),
    CityCardModel(
        assetImage: Images.sydney,
        cityName: 'Sydney',
        discount: '90%',
        monthYear: 'Jan 2019',
        newPrice: '\$20,000',
        oldPrice: '\$200.000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Currently Watched items',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text(
                'View All (12)',
                style: TextStyle(color: Theme.of(context).primaryColor),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 280,
            child: ListView.builder(
              itemCount: cityCards.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  // height: 210,
                  width: 200,
                  margin: EdgeInsets.only(right: 20.0),
                  // padding: EdgeInsets.all(10),
                  child: _buildCityCard(cityCards[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCityCard(CityCardModel cityCardModel) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Image(
                      image: cityCardModel.assetImage,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.black12,
                          Colors.black,
                        ])),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          cityCardModel.cityName,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 22.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              cityCardModel.monthYear,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white),
                                child: Text(
                                  cityCardModel.discount,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                cityCardModel.newPrice,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "(${cityCardModel.oldPrice})",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  String selectedLocation = '';
  bool isFlightingSelected = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 430.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(width: 10.0),
                      buildPopupMenuButton(),
                      Spacer(),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  '¿ A donde te gustaria \n ir ?',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30.0),
                    child: TextField(
                      controller: TextEditingController(text: selectedLocation),
                      decoration: InputDecoration(
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 14.0),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ChoiceChip(
                        icon: Icons.flight_takeoff,
                        text: 'Vuelos',
                        isFlightingSelected: isFlightingSelected),
                    SizedBox(
                      width: 20.0,
                    ),
                    ChoiceChip(
                        icon: Icons.hotel,
                        text: 'Hoteles',
                        isFlightingSelected: !isFlightingSelected),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  PopupMenuButton<String> buildPopupMenuButton() {
    return PopupMenuButton(
      onSelected: (loc) {
        setState(() {
          selectedLocation = loc;
        });
      },
      child: Row(
        children: <Widget>[
          Text(
            selectedLocation ?? '',
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          )
        ],
      ),
      itemBuilder: (context) {
        return locations.map((loc) {
          return PopupMenuItem(
            child: Text(loc),
            value: loc,
          );
        }).toList();
      },
    );
  }
}

class ChoiceChip extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isFlightingSelected;
  ChoiceChip({this.icon, this.text, this.isFlightingSelected});

  @override
  _ChoiceChipState createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: widget.isFlightingSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white.withOpacity(0.16))
          : null,
      child: Row(
        children: <Widget>[
          Icon(widget.icon, color: Colors.white),
          SizedBox(
            width: 5.0,
          ),
          Text(
            widget.text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
