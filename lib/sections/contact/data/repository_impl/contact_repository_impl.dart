import 'package:pankaj_portfolio/sections/contact/data/datasource/contact_remote_datasource.dart';
import 'package:pankaj_portfolio/sections/contact/data/models/contact_model.dart';
import 'package:pankaj_portfolio/sections/contact/domain/entities/contact_entity.dart';
import 'package:pankaj_portfolio/sections/contact/domain/repository/contact_repository.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactRemoteDataSource remoteDataSource;

  ContactRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> submitContact(ContactEntity contact) async{
    final model = ContactModel.fromEntity(contact);
    await remoteDataSource.sendContactData(model);
  }
}