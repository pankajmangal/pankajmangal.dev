import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ToggleTheme extends ThemeEvent {
  final ThemeMode themeMode;

  ToggleTheme(this.themeMode);

  @override
  List<Object?> get props => [themeMode];
}
