import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/sections/skills/animated_skill_progress.dart';
import 'package:pankaj_portfolio/sections/skills/skill_model.dart';
import 'package:pankaj_portfolio/sections/skills/skill_progress.dart';

class SkillCard extends StatelessWidget {

  final String title;
  final List<SkillModel> skills;
  final double width;

  const SkillCard({
    super.key,
    required this.title,
    required this.skills,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: width,

      padding: const EdgeInsets.all(30),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
          )
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          ...skills.map((skill) => AnimatedSkillProgress(skillModel: skill,)),

        ],
      ),
    );
  }
}