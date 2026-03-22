import 'package:flutter/material.dart';

class TechChip extends StatefulWidget {
  final String label;
  final IconData? icon;

  const TechChip({
    super.key,
    required this.label,
    this.icon,
  });

  @override
  State<TechChip> createState() => _TechChipState();
}

class _TechChipState extends State<TechChip> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: isHovered
            ? (Matrix4.identity()..translate(0, -4))
            : Matrix4.identity(),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: !isHovered
              ? Colors.white.withValues(alpha: 0.05)
              : Colors.white.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isHovered
                ? Colors.blueAccent.withValues(alpha: 0.6)
                : Colors.white.withValues(alpha: 0.15),
          ),
          boxShadow: isHovered
              ? [
            BoxShadow(
              color: Colors.black.withValues(alpha: .2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ]
              : [],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.icon != null) ...[
              Icon(widget.icon, size: 16),
              const SizedBox(width: 6),
            ],
            Text(
              widget.label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}