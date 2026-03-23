import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pankaj_portfolio/sections/contact/data/models/contact_model.dart';

abstract class ContactRemoteDataSource {
  Future<void> sendContactData(ContactModel model);
}

class ContactRemoteDataSourceImpl implements ContactRemoteDataSource {
  final FirebaseFirestore firestore;

  ContactRemoteDataSourceImpl(this.firestore);

  @override
  Future<void> sendContactData(ContactModel model) async {
    try {
      await firestore.collection('contact_messages').add(model.toJson());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        throw Exception('Permission denied. Check Firestore rules.');
      } else if (e.code == 'unavailable') {
        throw Exception('No internet connection.');
      } else {
        throw Exception(e.message ?? 'Firestore error');
      }
    }
  }
}