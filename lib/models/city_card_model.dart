import 'package:flutter/material.dart';

class CityCardModel {
  AssetImage assetImage;
  String cityName;
  String monthYear;
  String discount;
  String oldPrice;
  String newPrice;

  CityCardModel({this.assetImage,this.cityName,this.discount,this.monthYear,this.newPrice,this.oldPrice});

}