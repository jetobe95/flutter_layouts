import 'package:flight_tickets/data/genre_data.dart';
import 'package:flight_tickets/models/genre_cover_model.dart';
import 'package:flight_tickets/search_delegate.dart';
import 'package:flight_tickets/widgets/genre_cover_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final GenreCoverData _genreCoverData = GenreCoverData();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Color(0xff121212),
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              SafeArea(
                child: Text(
                  'Buscar',
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontSize: 40.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              )
            ]),
          ),
          SliverAppBar(
            backgroundColor: Color(0xff121212),
            pinned: true,
            titleSpacing: 0,
            title: GestureDetector(
              onTap: ()=>_openSearch(context),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(bottom: 10.0, left: 5, right: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Row(children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Artistas, canciones o podcast',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                ]),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 20,
              ),
              Text(
                'Los generos que mas escuchaste',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              SizedBox(height: 32.0)
            ]),
          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 100 / 70,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext contex, int index) {
                  final generCover = _genreCoverData.genreData[index];
                  return GenreCoverWidget(
                    genreCoverModel: generCover,
                  );
                },
                childCount: _genreCoverData.genreData.length,
              )),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 20,
              ),
              Text(
                'Explorar todo',
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16.0),
              ),
              SizedBox(height: 32.0)
              
            ]),
          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 100 / 70,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext contex, int index) {
                  final generCover = _genreCoverData.genreData[index];

                  return GenreCoverWidget(
                    genreCoverModel: generCover,
                  );
                },
                childCount: _genreCoverData.genreData.length,
              )),
        ],
      ),
    );
  }

 void _openSearch(BuildContext context) {
  //  CustomSearchDelegate().appBarTheme(context).
   showSearch(
     context: context,
     delegate: CustomSearchDelegate(),

   );
 }
}
