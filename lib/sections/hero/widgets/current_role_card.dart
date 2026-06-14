import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentRoleCard extends StatelessWidget {
  final double width;
  final double padding;
  final bool isMobile;

  const CurrentRoleCard({super.key,
    required this.width,
    required this.padding,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          isMobile ? 20 : 24,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CURRENTLY',
            style: GoogleFonts.inter(
              letterSpacing: 2,
              fontSize: isMobile ? 10 : 12,
              fontWeight: FontWeight.w500,
              color: const Color(0xff6B7280),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Flutter Lead Engineer',
            style: GoogleFonts.inter(
              fontSize: isMobile ? 14 : 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff111827),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'India · Remote-friendly',
            style: GoogleFonts.inter(
              fontSize: isMobile ? 14 : 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xff6B7280),
            ),
          ),
        ],
      ),
    );
  }
}