import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';
import 'package:pankaj_portfolio/sections/projects/domain/repository/project_repository.dart';

class FetchProjectsUseCase {
  final ProjectRepository repository;

  FetchProjectsUseCase(this.repository);

  Future<List<ProjectEntity>> call() {
    return repository.fetchProjects();
  }
}