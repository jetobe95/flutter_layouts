import 'package:flight_tickets/models/cover_model.dart';
import 'package:flutter/material.dart';

class CoverWidget extends StatelessWidget {
  final CoverModel coverModel;

  const CoverWidget({Key key, this.coverModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          coverModel.image != null
              ? Expanded(child: Image.network(coverModel.image))
              : Container(),
          SizedBox(
            height: 10.0,
          ),
          Text(
            coverModel.title,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          coverModel.subtitle != null
              ? Text(
                  coverModel.subtitle,
                  style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[400]),
                )
              : Container(constraints: BoxConstraints(minHeight: 20),)
        ],
      ),
    );
  }
}
