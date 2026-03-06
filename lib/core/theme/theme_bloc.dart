import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/theme/theme_event.dart';
import 'package:pankaj_portfolio/core/theme/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(ThemeMode.light)) {
    on<ToggleTheme>((event, emit) {
      final isDark = state.themeMode == ThemeMode.dark;
      emit(ThemeState(isDark ? ThemeMode.light : ThemeMode.dark));
    });
  }
}
