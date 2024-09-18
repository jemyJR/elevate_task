import 'package:elevate_task/core/networking/api/api_endpoints.dart';

class ErrorModel {
  final String? errorMessage;
  final String? errorCode;

  ErrorModel({
    this.errorMessage,
    this.errorCode,
  });
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      errorMessage: json[ApiKey.errorMessage],
      errorCode: json[ApiKey.errorCode],
    );
  }
}
