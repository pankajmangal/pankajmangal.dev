import 'package:pankaj_portfolio/sections/projects/data/datasource/project_firestore_datasource.dart';
import 'package:pankaj_portfolio/sections/projects/data/model/project_model.dart';
import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';
import 'package:pankaj_portfolio/sections/projects/domain/repository/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final ProjectRemoteDatasource datasource;

  ProjectRepositoryImpl(this.datasource);

  @override
  Future<void> pushProjects(List<ProjectEntity> projects) async {
    final models = projects
        .map((e) => ProjectModel(
      title: e.title,
      description: e.description,
      shortDescription: e.shortDescription,
      banner: e.banner,
      thumbnail: e.thumbnail,
      technologies: e.technologies,
      features: e.features,
      highlights: e.highlights,
      platforms: e.platforms,
      playStoreUrl: e.playStoreUrl,
      appStoreUrl: e.appStoreUrl,
      featured: e.featured,
      order: e.order,
    )).toList();

    await datasource.pushProjects(models);
  }

  @override
  Future<List<ProjectEntity>> fetchProjects() async{
    final models = await datasource.fetchProjects();
    return models.map((e) => e.toEntity()).toList();
  }
}