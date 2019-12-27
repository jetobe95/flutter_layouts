import 'dart:ui';

class GenreCoverModel {
  String title;
  String image;
  List<Color> colors;

  GenreCoverModel({
    this.title,
    this.image,
    this.colors
  });

  factory GenreCoverModel.fromJson(Map<String, dynamic> json) => GenreCoverModel(
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
      };
}
