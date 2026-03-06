import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/theme/theme_event.dart';
import 'package:pankaj_portfolio/core/theme/theme_state.dart';
import '../../core/theme/theme_bloc.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDark = state.themeMode == ThemeMode.dark;

        return InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: () {
            context.read<ThemeBloc>().add(ToggleTheme(state.themeMode));
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context)
                    .dividerColor
                    .withValues(alpha: 0.2),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              transitionBuilder: (child, animation) =>
                  RotationTransition(
                    turns: animation,
                    child: child,
                  ),
              child: Icon(
                isDark ? Icons.light_mode : Icons.dark_mode,
                key: ValueKey(isDark),
                size: 18,
              ),
            ),
          ),
        );
      },
    );
  }
}