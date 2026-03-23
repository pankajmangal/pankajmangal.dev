import 'package:equatable/equatable.dart';

class ContactState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ContactInitial extends ContactState {}

class ContactLoading extends ContactState {}

class ContactSuccess extends ContactState {}

class ContactError extends ContactState {
  final String message;
  ContactError(this.message);

  @override
  List<Object?> get props => [message];
}