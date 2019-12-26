import 'package:flight_tickets/models/movie_model.dart';
import 'package:flight_tickets/search_delegate.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MovieModel _pelicula;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscador de peliculas'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => _openSearch(context),
          )
        ],
      ),
      body: _pelicula == null
          ? Container()
          : Container(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.network(_pelicula.image),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _pelicula.title,
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _pelicula.subtitle,
                      style: TextStyle(fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
            ),
    );
  }

  void _openSearch(BuildContext context) async {
    final pelicula =
        await showSearch<MovieModel>(delegate: DataSearch(), context: context);
    setState(() {
      _pelicula = pelicula;
    });
  }
}
