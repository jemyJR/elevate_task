import 'package:elevate_task/core/networking/api/api_endpoints.dart';

class RatingModel {
  final num rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: json[ApiKey.rate],
      count: json[ApiKey.count],
    );
  }
}
