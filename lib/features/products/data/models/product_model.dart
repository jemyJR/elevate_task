import 'package:elevate_task/core/networking/api/api_endpoints.dart';
import 'package:elevate_task/features/products/data/models/rating_model.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final num price;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json[ApiKey.id],
      title: json[ApiKey.title],
      description: json[ApiKey.description],
      price: json[ApiKey.price],
      image: json[ApiKey.image],
      rating: RatingModel.fromJson(json[ApiKey.rating]),
    );
  }
}
