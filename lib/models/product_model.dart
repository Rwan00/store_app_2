class ProductModal {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModal rating;
  final String category;

  ProductModal({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.category,
  });

  factory ProductModal.fromJson(jsonData) {
    return ProductModal(
      id: jsonData["id"],
      title: jsonData["title"],
      price: jsonData["price"],
      description: jsonData["description"],
      image: jsonData["image"],
      rating: RatingModal.fromJson(jsonData["rating"]),
      category: jsonData['category'],
    );
  }
}

class RatingModal {
  final dynamic rate;
  final int count;

  RatingModal({
    required this.rate,
    required this.count,
  });

  factory RatingModal.fromJson(jsonData) {
    return RatingModal(
      rate: jsonData["rate"].toDouble(),
      count: jsonData["count"],
    );
  }
}
