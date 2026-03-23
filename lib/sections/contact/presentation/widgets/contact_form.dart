import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/regex/regex.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_bloc.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_event.dart';
import 'package:pankaj_portfolio/sections/contact/presentation/bloc/contact_state.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  bool isValid = false;

  void _validate() {
    setState(() {
      isValid = _formKey.currentState?.validate() ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContactBloc, ContactState>(builder: (context, state) {
      return Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: const Color(0xFFF4F6FA),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Form(
          key: _formKey,
          onChanged: _validate,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: fieldDecoration('Your name'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                },),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: fieldDecoration('your.email@example.com'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }

                  if (!emailRegex.hasMatch(value)) {
                    return 'Enter valid email';
                  }

                  return null;
                },),
              const SizedBox(height: 20),
              TextFormField(
                controller: subjectController,
                decoration: fieldDecoration('Project inquiry'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Subject is required';
                  }
                  return null;
                },),
              const SizedBox(height: 20),

              TextFormField(
                controller: messageController,
                maxLines: 5,
                decoration: fieldDecoration(
                    'Tell me about your project...'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Message is required';
                  }
                  if (value.length < 10) {
                    return 'Message too short';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton.icon(
                  icon: state is ContactLoading
                      ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                      : const Icon(Icons.send),
                  label: const Text(
                    'Send Message',
                    style: TextStyle(
                      fontSize: Dimens.fontSize18,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  onPressed: state is ContactLoading
                      ? null
                      : isValid
                      ? () => _submit(context)
                      : null,
                )
              )
            ],
          ),
        ),
      );
    }, listener: (context, state) {
      if (state is ContactSuccess) {
        clearForm();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Message sent successfully 🚀'),
          ),
        );
      }

      if (state is ContactError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.message)),
        );
      }
    },);
  }

  void clearForm() {
    nameController.clear();
    emailController.clear();
    subjectController.clear();
    messageController.clear();
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<ContactBloc>().add(
        SubmitContactEvent(
          name: nameController.text,
          email: emailController.text,
          subject: subjectController.text,
          message: messageController.text,
        ),
      );
    }
  }
}
