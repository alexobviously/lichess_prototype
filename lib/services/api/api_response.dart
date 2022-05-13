part of 'api_client.dart';

class ApiResponse {
  final int status;
  final Map<String, dynamic> data;
  final String? error;
  final MapStream? stream;

  bool get ok => status >= 200 && status < 300;

  const ApiResponse({
    required this.status,
    this.data = const {},
    this.error,
    this.stream,
  });

  factory ApiResponse.ok({
    int status = 200,
    Map<String, dynamic> data = const {},
  }) =>
      ApiResponse(
        status: status,
        data: data,
      );

  factory ApiResponse.error(
    int status, {
    Map<String, dynamic> data = const {},
    String? error,
  }) =>
      ApiResponse(
        status: status,
        data: data,
        error: error,
      );

  factory ApiResponse.stream({
    int status = 200,
    required MapStream stream,
  }) =>
      ApiResponse(status: status, stream: stream);
}
