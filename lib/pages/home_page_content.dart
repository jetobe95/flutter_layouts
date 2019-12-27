import 'package:flight_tickets/data/cover_data.dart';
import 'package:flight_tickets/models/cover_model.dart';
import 'package:flight_tickets/widgets/cover_widget.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  CoverData _coverData = CoverData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: Colors.red,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff717172),
                  Color(0xff121212),
                  Color(0xff121212),
                  Color(0xff121212),
                  Color(0xff121212),
                  Color(0xff121212),
                ])),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Escuchado recientemente',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 40.0,),
              Container(
                height: size.height * 0.2,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: _coverData.recents.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CoverWidget(
                      coverModel: _coverData.recents[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 40.0,),
              Text(
                'Lo que más escuchas',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 20.0,),
              SizedBox(
                height: size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _coverData.mostListen.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CoverWidget(
                      coverModel: _coverData.mostListen[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 40.0,),
            ],
          ),
        ),
      ),
    );
  }
}
