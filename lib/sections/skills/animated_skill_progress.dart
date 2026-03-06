import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/sections/skills/skill_model.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedSkillProgress extends StatefulWidget {

  final SkillModel skillModel;

  const AnimatedSkillProgress({
    super.key,
    required this.skillModel,
  });

  @override
  State<AnimatedSkillProgress> createState()
  => _AnimatedSkillProgressState();
}

class _AnimatedSkillProgressState
    extends State<AnimatedSkillProgress>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;

  bool hasAnimated = false;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    animation = Tween<double>(
      begin: 0,
      end: widget.skillModel.percent / 100,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutCubic,
      ),
    );
  }

  void startAnimation() {
    if (!hasAnimated) {
      controller.forward();
      hasAnimated = true;
    }
  }

  @override
  Widget build(BuildContext context) {

    return VisibilityDetector(
      key: Key(widget.skillModel.name),

      onVisibilityChanged: (info) {

        if (info.visibleFraction > 0.3) {
          startAnimation();
        }

      },

      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [

            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [

                Text(widget.skillModel.name),

                Text("${widget.skillModel.percent}%"),

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

                AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {

                    return FractionallySizedBox(
                      widthFactor: animation.value,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(10),

                          gradient:
                          const LinearGradient(
                            colors: [
                              Color(0xFF2563EB),
                              Color(0xFF9333EA),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}