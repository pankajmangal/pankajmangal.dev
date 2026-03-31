import 'package:equatable/equatable.dart';
import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';

class ProjectsEvent extends Equatable {
  const ProjectsEvent();

  @override
  List<Object> get props => [];
}

class PushProjectsEvent extends ProjectsEvent {
  final List<ProjectEntity> projects;

  const PushProjectsEvent(this.projects);

  @override
  List<Object> get props => [projects];
}

class FetchProjectsEvent extends ProjectsEvent {
  const FetchProjectsEvent();

  @override
  List<Object> get props => [];
}