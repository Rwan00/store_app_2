class ProductModal {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModal rating;

  ProductModal(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
        required this.rating,
      });

  factory ProductModal.fromJson(jsonData) {
    return ProductModal(
      id: jsonData["id"],
      title: jsonData["title"],
      price: jsonData["price"],
      description: jsonData["description"],
      image: jsonData["image"],
      rating: RatingModal.fromJson(jsonData["rating"]),
    );
  }
}

class RatingModal {
  final double rate;
  final int count;

  RatingModal({
    required this.rate,
    required this.count,
  });

  factory RatingModal.fromJson(jsonData) {
    return RatingModal(
      rate: jsonData["rate"],
      count: jsonData["count"],
    );
  }
}
