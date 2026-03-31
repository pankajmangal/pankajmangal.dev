import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';

abstract class ProjectRepository {
  Future<void> pushProjects(List<ProjectEntity> projects);
  Future<List<ProjectEntity>> fetchProjects();
}