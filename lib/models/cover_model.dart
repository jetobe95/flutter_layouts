class CoverModel {
  String title,subtitle;
  String image;

  CoverModel({
    this.title,
    this.subtitle,
    this.image,
  });

  factory CoverModel.fromJson(Map<String, dynamic> json) => CoverModel(
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
      };
}
