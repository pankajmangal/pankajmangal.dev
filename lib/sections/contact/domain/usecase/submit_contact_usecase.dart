import 'package:pankaj_portfolio/sections/contact/domain/entities/contact_entity.dart';
import 'package:pankaj_portfolio/sections/contact/domain/repository/contact_repository.dart';

class SubmitContactUseCase {
  final ContactRepository repository;

  SubmitContactUseCase(this.repository);

  Future<void> call(ContactEntity contact) {
    return repository.submitContact(contact);
  }
}