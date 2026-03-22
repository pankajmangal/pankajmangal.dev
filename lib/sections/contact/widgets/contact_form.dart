import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  InputDecoration fieldDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.transparent,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6FA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [

          TextField(decoration: fieldDecoration('Your name')),

          const SizedBox(height: 20),

          TextField(decoration: fieldDecoration('your.email@example.com')),

          const SizedBox(height: 20),

          TextField(decoration: fieldDecoration('Project inquiry')),

          const SizedBox(height: 20),

          TextField(
            maxLines: 5,
            decoration: fieldDecoration(
                'Tell me about your project...'),
          ),

          const SizedBox(height: 30),

          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text(
                'Send Message',
                style: TextStyle(fontSize: Dimens.fontSize18,
                color: AppColors.whiteColor),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}