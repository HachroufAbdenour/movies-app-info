// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../network/error_message-model.dart';

// hada khas bi remote data source

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({
    required this.errorMessageModel,
  });
}

// hada khas bi local data source exception
class LocalDatabaseException {
  final String message;

  LocalDatabaseException({
    required this.message,
  });
}
