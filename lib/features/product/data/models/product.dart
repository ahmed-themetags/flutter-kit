class Product {
  final int id;
  final String title;
  final String category;
  final String featureImage;
  final String description;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.featureImage,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      category: json['category'],
      featureImage: json['feature_image'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'category': category,
    'feature_image': featureImage,
    'description': description,
  };
}
