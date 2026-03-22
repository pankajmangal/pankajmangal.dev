import 'package:flutter/material.dart';

class MetricChip extends StatelessWidget {
  final String label;

  const MetricChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(
          colors: [
            Colors.blue.withValues(alpha: .2),
            Colors.cyan.withValues(alpha: .2),
          ],
        ),
        border:
        Border.all(color: Colors.blue.withValues(alpha: .4)),
      ),
      child: Text(
        label,
        style:
        const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}