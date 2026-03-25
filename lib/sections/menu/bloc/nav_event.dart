import 'package:equatable/equatable.dart';

class NavEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class SetActiveSection extends NavEvent {
  final String section;
  SetActiveSection(this.section);

  @override
  List<Object?> get props => [section];
}