import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';
import 'package:pankaj_portfolio/sections/projects/domain/repository/project_repository.dart';

class PushProjectsUseCase {
  final ProjectRepository repository;

  PushProjectsUseCase(this.repository);

  Future<void> call(List<ProjectEntity> projects) {
    return repository.pushProjects(projects);
  }
}