import 'package:pankaj_portfolio/sections/contact/domain/entities/contact_entity.dart';

abstract class ContactRepository {
  Future<void> submitContact(ContactEntity contact);
}