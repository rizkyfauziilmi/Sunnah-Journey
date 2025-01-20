enum ResponseType {
  success,
  warning,
  error,
}

class ResponseResult {
  final ResponseType responseType;
  final String title;
  final String message;

  ResponseResult({
    required this.responseType,
    required this.title,
    required this.message,
  });
}

ResponseResult successResponse(String title, String message) {
  return ResponseResult(
    responseType: ResponseType.success,
    title: title,
    message: message,
  );
}

ResponseResult errorResponse(String title, String message) {
  return ResponseResult(
    responseType: ResponseType.error,
    title: title,
    message: message,
  );
}
