class FlightModel {
    String newPrice;
    String oldPrice;
    String monthYear;
    String aerolineName;
    String rating;
    String discount;

    FlightModel({
        this.newPrice,
        this.oldPrice,
        this.monthYear,
        this.aerolineName,
        this.rating,
        this.discount,
    });

    factory FlightModel.fromJson(Map<String, dynamic> json) => FlightModel(
        newPrice: json["newPrice"],
        oldPrice: json["oldPrice"],
        monthYear: json["monthYear"],
        aerolineName: json["aerolineName"],
        rating: json["rating"],
        discount: json["discount"],
    );

    Map<String, dynamic> toJson() => {
        "newPrice": newPrice,
        "oldPrice": oldPrice,
        "monthYear": monthYear,
        "aerolineName": aerolineName,
        "rating": rating,
        "discount": discount,
    };
}
