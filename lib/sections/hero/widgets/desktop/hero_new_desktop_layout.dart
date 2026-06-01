import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/image_paths.dart';
import 'package:pankaj_portfolio/core/utils/social_links.dart';
import 'package:pankaj_portfolio/widgets/buttons/portfolio_social_button.dart';

class HeroNewDesktopLayout extends StatelessWidget {
  const HeroNewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: AppColors.border,
                  ),
                ),
                child: const Text(
                  "Open to senior & lead roles",
                ),
              ),

              const SizedBox(height: 30),

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "I architect ",
                      style: GoogleFonts.inter(
                        fontSize: 72,
                        fontWeight: FontWeight.w800,
                        color: AppColors.heading,
                        height: 1.0,
                      ),
                    ),
                    TextSpan(
                      text: "scalable",
                      style: GoogleFonts.inter(
                        fontSize: 72,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                        height: 1.0,
                      ),
                    ),
                    TextSpan(
                      text: "\nmobile experiences.",
                      style: GoogleFonts.inter(
                        fontSize: 72,
                        fontWeight: FontWeight.w800,
                        color: AppColors.heading,
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: 650,
                child: Text(
                  "Hi, I'm Pankaj Mangal — Flutter Lead Engineer with 9+ years in mobile, shipping high-performance apps used by 500K+ users across iOS, Android & Web.",
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    color: AppColors.body,
                    height: 1.8,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Row(
                children: [

                  ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 18,
                      ),
                      child: Text("View Projects"),
                    ),
                  ),

                  const SizedBox(width: 20),

                  OutlinedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 18,
                      ),
                      child: Text("Download CV"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: [
                  PortfolioSocialButton(iconPath: ImagePaths.github, onTap: () => openLink(SocialLinks.githubLink)),
                  PortfolioSocialButton(iconPath: ImagePaths.linkedin, onTap: () => openLink(SocialLinks.linkedinLink)),
                  PortfolioSocialButton(iconPath: ImagePaths.mail, onTap: () => openLink(SocialLinks.emailLink)),
                ],
              )
            ],
          ),
        ),

        const SizedBox(width: 80),

        Expanded(
          flex: 5,
          child: Stack(
            clipBehavior: Clip.none,
            children: [

              Container(
                height: 650,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(.15),
                      blurRadius: 50,
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    ImagePaths.profileImg,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                bottom: -30,
                left: -30,
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: const [

                      Text(
                        "CURRENTLY",
                        style: TextStyle(
                          letterSpacing: 3,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Flutter Lead Engineer",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "India · Remote-friendly",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}