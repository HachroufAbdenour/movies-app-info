// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statuscode;
  final String statusMessage;
  final bool success;

  const ErrorMessageModel({
    required this.statuscode,
    required this.statusMessage,
    required this.success,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        statuscode: json['status_code'],
        statusMessage: json['status_message'],
        success: json['success']);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [statuscode, statusMessage, success];
}
