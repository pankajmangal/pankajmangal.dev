import 'package:equatable/equatable.dart';

class ContactEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SubmitContactEvent extends ContactEvent {
  final String name;
  final String email;
  final String subject;
  final String message;

  SubmitContactEvent({
    required this.name,
    required this.email,
    required this.subject,
    required this.message,
  });

  @override
  List<Object?> get props => [name, email, subject, message];
}