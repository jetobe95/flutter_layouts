import 'package:flight_tickets/models/movie_model.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<MovieModel> {
  MovieModel peliculaSeleccionada;
  List<MovieModel> peliculas = [
    MovieModel(
        title: 'Frozen 2',
        subtitle: 'Proident in sint cupidatat minim non magna officia et do.',
        image: 'https://i.blogs.es/bc62ad/frozen-2-cancion/450_1000.jpg'),
    MovieModel(
      title: 'Espías a escondidas',
      subtitle: 'Proident in sint cupidatat minim non magna officia et do.',
      image: 'https://cinemarkmedia.modyocdn.com/co/300x400/221500.jpg',
    ),
    MovieModel(
      title: 'Al son que me toquen bailo',
      subtitle: 'Proident in sint cupidatat minim non magna officia et do.',
      image: 'https://cinemarkmedia.modyocdn.com/co/300x400/221492.jpg',
    ),
    MovieModel(
      title: 'Al son que me toquen bailo',
      subtitle: 'Proident in sint cupidatat minim non magna officia et do.',
      image: 'https://cinemarkmedia.modyocdn.com/co/300x400/221492.jpg',
    ),
    MovieModel(
      title: 'Al son que me toquen bailo',
      subtitle: 'Proident in sint cupidatat minim non magna officia et do.',
      image: 'https://cinemarkmedia.modyocdn.com/co/300x400/221492.jpg',
    ),
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: transitionAnimation,
        ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listaSugerida = query.isEmpty
        ? peliculas
        : peliculas.where((test) {
            if (test.title.toLowerCase().contains(query.toLowerCase()))
              return true;
            if (test.subtitle.toLowerCase().contains(query.toLowerCase()))
              return true;
            return false;
          }).toList();
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 12,mainAxisSpacing: 12),
      itemCount: listaSugerida.length,
      itemBuilder: (context, index) {
        return Image.network(
          peliculas[index].image,
          fit: BoxFit.cover,
        );
      },
    );
    return ListView.builder(
      itemCount: listaSugerida.length,
      itemBuilder: (context, index) {
        final pelicula = listaSugerida[index];
        return ListTile(
          onTap: () {
            peliculaSeleccionada = pelicula;
            close(context, pelicula);
          },
          contentPadding: EdgeInsets.all(15.0),
          leading: Image.network(
            pelicula.image,
            fit: BoxFit.fitHeight,
            width: 50.0,
            height: 100.0,
          ),
          title: Text(
            pelicula.title,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: Text(pelicula.subtitle),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Card(
        // elevation: 10.0,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(peliculaSeleccionada.image),
              SizedBox(
                height: 10,
              ),
              Text(
                peliculaSeleccionada.title,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                peliculaSeleccionada.subtitle,
                style: TextStyle(fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
