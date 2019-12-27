import 'package:flight_tickets/models/genre_cover_model.dart';
import 'package:flutter/material.dart';

class GenreCoverData {
  List<GenreCoverModel> get genreData {
    return [
      GenreCoverModel(
        title: 'Rock',
        image: 'https://pbs.twimg.com/media/C_DyMVQWsAASnMK.jpg',
        colors: [
          Color(0xffFA000C),
          Color(0xffFA000C),
        ],
      ),
      GenreCoverModel(
          title: 'Hip Hop',
          colors: [Color(0xffFD9A00), Color(0xffE78D00)],
          image:
              'https://i.pinimg.com/474x/90/5e/b2/905eb27318f1aef18ad39f3958c8d3d8.jpg'),
      GenreCoverModel(
          colors: [Color(0xffB5F5C5), Color(0xff92C3A1)],
          title: 'Pop',
          image:
              'https://i.pinimg.com/236x/b1/2c/d5/b12cd53e385450a0773c2dbcc516ba11.jpg'),
      GenreCoverModel(
          title: 'Musica Brasileña',
          image:
              'https://i.pinimg.com/474x/90/5e/b2/905eb27318f1aef18ad39f3958c8d3d8.jpg'),
    ];
  }
}
