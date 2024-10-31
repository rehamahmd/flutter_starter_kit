abstract class AppError {
  final String? msg;
  const AppError(this.msg);
}

class ServerError implements AppError {
  const ServerError([this.msg = 'serverError']);
  @override
  final String? msg;
}

class NetworkError implements AppError {
  const NetworkError([this.msg = 'networkError']);
  @override
  final String? msg;
}

class OperationError implements AppError {
  const OperationError([this.msg]);
  @override
  final String? msg;
}
