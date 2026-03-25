import 'dart:ui';

class FooterItem {
  final String label;
  final VoidCallback? onTap;

  FooterItem({
    required this.label,
    this.onTap,
  });
}