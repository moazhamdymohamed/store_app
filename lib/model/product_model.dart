class ProductModel {
  final int id;
  final String title;
  final double price;
  final String descreption;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.descreption,
      required this.image,
      required this.rating});
  factory ProductModel.fromjeson(jesondata) {
    return ProductModel(
        id: jesondata["id"],
        title: jesondata["title"],
        price: jesondata["price"],
        descreption: jesondata["description"],
        image: jesondata["image"],
        rating: RatingModel.fromJesom(jesondata["rating"]));
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({
required this.rate,
 required this.count,
  });
  factory RatingModel.fromJesom(jesonData) {
    return RatingModel(
      rate: jesonData["rate"],
      count: jesonData["count"],
    );
  }
}

