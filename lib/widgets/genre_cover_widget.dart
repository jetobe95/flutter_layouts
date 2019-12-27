import 'package:flight_tickets/models/cover_model.dart';
import 'package:flight_tickets/models/genre_cover_model.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class GenreCoverWidget extends StatelessWidget {
  final GenreCoverModel genreCoverModel;

  const GenreCoverWidget({Key key, this.genreCoverModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: genreCoverModel?.colors??[Colors.amber,Colors.red]
          )
        ),
        child: Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  genreCoverModel.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Positioned(
              right: -10,
              bottom: 10,
              child: Transform.rotate(
                angle: 42 / (math.pi * 2),
                child: Container(
                  width: 80,
                  height: 90,
                  child: genreCoverModel.image == null
                      ? FlutterLogo()
                      : Image.network(genreCoverModel.image),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
