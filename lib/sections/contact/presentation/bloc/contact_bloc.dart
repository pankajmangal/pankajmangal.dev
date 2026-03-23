import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/sections/contact/domain/entities/contact_entity.dart';
import 'package:pankaj_portfolio/sections/contact/domain/usecase/submit_contact_usecase.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_event.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final SubmitContactUseCase submitContactUseCase;

  ContactBloc(this.submitContactUseCase) : super(ContactInitial()) {
    on<SubmitContactEvent>(_submit);
  }

  Future<void> _submit(
      SubmitContactEvent event,
      Emitter<ContactState> emit,
      ) async {
    emit(ContactLoading());

    try {
      await submitContactUseCase(
       ContactEntity( name: event.name,
         email: event.email,
         subject: event.subject,
         message: event.message,)
      );

      emit(ContactSuccess());
    } catch (e) {
      emit(ContactError('Failed to send message'));
    }
  }
}