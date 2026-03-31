import 'package:equatable/equatable.dart';
import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';

class ProjectsState extends Equatable {
  const ProjectsState();

  @override
  List<Object> get props => [];
}

class ProjectsInitial extends ProjectsState {}

class ProjectsLoading extends ProjectsState {}

class ProjectsSuccess extends ProjectsState {}

class ProjectsFetchLoaded extends ProjectsState {
  final List<ProjectEntity> projects;
  const ProjectsFetchLoaded(this.projects);

  @override
  List<Object> get props => [projects];
}

class ProjectsError extends ProjectsState {
  final String message;
  const ProjectsError(this.message);

  @override
  List<Object> get props => [message];
}