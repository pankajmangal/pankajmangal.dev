import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/sections/projects/presentation/widgets/project_card.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final List<ProjectCard> projects = [
    ProjectCard(
      category: 'FinTech',
      title: 'Maya (PayMaya)',
      description:
          'One of the largest digital wallet and financial services platforms in the Philippines, enabling payments, banking, transfers, savings, and QR transactions.',
      highlights: [
        'Digital wallet ecosystem',
        'QR payments',
        'Bill payments',
        'Virtual & physical cards',
        'Secure banking services',
        'Large-scale production deployment',
      ],
      impacts: [
        '50M+ transactions',
        'Secure Payments',
        'FinTech',
        'Wallet Platform',
      ],
      tech: [
        'Flutter',
        'Dart',
        'Bloc',
        'Firebase',
        'REST APIs',
        'Clean Architecture',
        'CI/CD',
      ],
    ),
    ProjectCard(
      category: 'E-Commerce',
      title: 'Amala Earth',
      description:
          'Sustainable shopping marketplace featuring 60,000+ eco-friendly products from hundreds of conscious brands.',
      highlights: [
        'Product catalog',
        'Secure checkout',
        'Wishlist',
        'Search & filtering',
        'Order tracking',
        'Payment integrations',
      ],
      impacts: ['60,000+ Products', '400+ Brands', 'Sustainable Commerce'],
      tech: [
        'Flutter',
        'Dart',
        'Firebase',
        'REST APIs',
        'GraphQL',
        'Razorpay',
        'Clean Architecture',
        'Analytics',
      ],
    ),
    ProjectCard(
      category: 'Marketplace',
      title: 'Bilddit',
      description:
          'Construction and building-material marketplace helping contractors and homeowners order supplies quickly.',
      highlights: [
        'Product catalog',
        'Fast ordering',
        'Real-time inventory',
        'Order tracking',
        'Secure payments',
        'Trade-focused workflows',
      ],
      impacts: ['Marketplace', 'Delivery Platform', 'B2B Commerce'],
      tech: [
        'Flutter',
        'Dart',
        'Bloc/Cubit',
        'Social Login Integration',
        'REST APIs',
        'GraphQL',
        'Stripe',
        'Clean Architecture',
        'Analytics',
      ],
    ),
    ProjectCard(
      category: 'Transportation',
      title: 'TaxiApp UK Passenger',
      description:
          'London black-cab booking platform allowing users to instantly book or schedule rides with licensed drivers.',
      highlights: [
        'Live ride tracking',
        'Google Maps',
        'Stripe payments',
        'Push notifications',
        'Scheduled bookings',
        'WebSocket communication',
      ],
      impacts: ['Real-Time Tracking', 'Ride Booking', 'Easier Payment Methods'],
      tech: [
        'Flutter',
        'Firebase',
        'REST APIs',
        'Google Maps',
        'Clean Architecture',
        'WebSocket',
        'Stripe',
      ],
    ),
    ProjectCard(
      category: 'Transportation',
      title: 'TaxiApp UK Driver',
      description:
          'Driver companion application providing ride management, navigation, earnings tracking, and dispatch functionality.',
      highlights: [
        'Driver earnings',
        'Ride dispatch',
        'Live navigation',
        'Location tracking',
        'Push notifications',
      ],
      impacts: ['Driver Platform', 'Real-Time Location', 'Fleet Management'],
      tech: [
        'Flutter',
        'Firebase',
        'REST APIs',
        'Google Maps',
        'Clean Architecture',
        'WebSocket',
        'Stripe',
      ],
    ),
    ProjectCard(
      category: 'Child Transportation',
      title: 'Kidcaboo & Driving Nanny',
      description:
          'Transportation ecosystem designed specifically for children with real-time guardian monitoring and driver management.',
      highlights: [
        'Live child tracking',
        'Driver assignment',
        'Route monitoring',
        'Ride safety workflows',
        'Push notifications',
      ],
      impacts: ['Child Safety', 'Location Tracking', 'Fleet Operations'],
      tech: [
        'Flutter',
        'Firebase',
        'REST APIs',
        'Google Maps',
        'Clean Architecture',
        'WebSocket',
        'Razorpay',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        const horizontalPadding = 120.0;
        const spacing = 24.0;

        int crossAxisCount = width > 1200
            ? 3
            : width > 800
            ? 2
            : 1;

        final availableWidth = width - (horizontalPadding * 2);
        final itemWidth =
            (availableWidth - ((crossAxisCount - 1) * spacing)) /
            crossAxisCount;

        return Container(
          color: AppColors.whiteColor,
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SELECTED WORK',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  letterSpacing: 2,
                  height: 1.65,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff4F46E5),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Building Products That Scale.',
                style: GoogleFonts.inter(
                  fontSize: 32,
                  height: 1.05,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff0F172A),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 900,
                child: Text(
                  'Production applications across fintech, mobility, e-commerce, and consumer platforms — designed for performance, reliability, and real-world impact.',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    height: 1.6,
                    color: const Color(0xff6B7280),
                  ),
                ),
              ),
              const SizedBox(height: 64),
              Wrap(
                spacing: 24,
                runSpacing: 24,
                children: projects.map((project) {
                  return SizedBox(width: itemWidth, child: project);
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
