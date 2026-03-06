import 'package:flutter/material.dart';
import 'project_model.dart';
import 'project_card.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int crossAxisCount;
    if (width < 700) {
      crossAxisCount = 1;
    } else if (width < 1100) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 3;
    }

    final projects = [
      const ProjectModel(
        title: "Youth Practitioner",
        category: "Healthcare App",
        imagePath: "assets/youth.png",
        url: "https://play.google.com",
      ),
      const ProjectModel(
        title: "Nikart: Online Food Delivery",
        category: "Food Delivery App",
        imagePath: "assets/nikart_food.png",
        url: "https://github.com",
      ),
      const ProjectModel(
        title: "Nikart: Restaurant Partner",
        category: "Food Processing App",
        imagePath: "assets/nikart_partner.png",
        url: "https://your-website.com",
      ),
    ];

    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 120, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              const Text(
                "PORTFOLIO",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 60,
                height: 4,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                "Projects crafted using modern technologies, clean architecture, and performance-driven development.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),
              GridView.builder(
                shrinkWrap: true,
                itemCount: projects.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 40,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (_, index) {
                  return ProjectCard(project: projects[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}