import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/skills/skill_model.dart';

class SkillProgress extends StatelessWidget {

  final SkillModel skill;

  const SkillProgress(this.skill, {super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [

          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [

              Text(skill.name),

              Text("${skill.percent}%"),

            ],
          ),

          const SizedBox(height: 8),

          Stack(
            children: [

              Container(
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius:
                  BorderRadius.circular(10),
                ),
              ),

              FractionallySizedBox(
                widthFactor: skill.percent / 100,
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(10),

                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF2563EB),
                        Color(0xFF9333EA),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}