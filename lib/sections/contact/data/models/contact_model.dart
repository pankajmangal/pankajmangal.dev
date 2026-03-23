import '../../domain/entities/contact_entity.dart';

class ContactModel extends ContactEntity {
  const ContactModel({
    required super.name,
    required super.email,
    required super.subject,
    required super.message,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'subject': subject,
      'message': message,
      'createdAt': DateTime.now(),
    };
  }

  factory ContactModel.fromEntity(ContactEntity entity) {
    return ContactModel(
      name: entity.name,
      email: entity.email,
      subject: entity.subject,
      message: entity.message,
    );
  }
}