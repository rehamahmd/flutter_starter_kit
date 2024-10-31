class NetworkResponse {
  final bool isSucceeded;
  final String messageCode;
  final String message;
  final dynamic data;
  NetworkResponse({
    required this.isSucceeded,
    required this.messageCode,
    required this.message,
    required this.data,
  });

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      isSucceeded: map['status'] as bool,
      messageCode: map['messageCode'] as String,
      message: map['message'] as String,
      data: map['data'],
    );
  }

  factory NetworkResponse.fromJson(Map<String, dynamic> source) => NetworkResponse.fromMap(source);

  @override
  String toString() {
    return 'NetworkResponse(isSucceeded: $isSucceeded, messageCode: $messageCode, message: $message, data: $data)';
  }
}
