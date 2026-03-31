import 'package:pankaj_portfolio/sections/projects/domain/entity/project_entity.dart';

class ProjectModel extends ProjectEntity {
  ProjectModel({
    required super.title,
    required super.description,
    required super.shortDescription,
    required super.banner,
    required super.thumbnail,
    required super.technologies,
    required super.features,
    required super.highlights,
    required super.platforms,
    required super.playStoreUrl,
    required super.appStoreUrl,
    required super.featured,
    required super.order,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      title: json['title'],
      description: json['description'],
      shortDescription: json['shortDescription'],
      banner: json['banner'],
      thumbnail: json['thumbnail'],
      technologies: List<String>.from(json['technologies']),
      features: List<String>.from(json['features']),
      highlights: List<String>.from(json['highlights']),
      platforms: List<String>.from(json['platforms']),
      playStoreUrl: json['playStoreUrl'],
      appStoreUrl: json['appStoreUrl'],
      featured: json['featured'],
      order: json['order'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'shortDescription': shortDescription,
      'banner': banner,
      'thumbnail': thumbnail,
      'technologies': technologies,
      'features': features,
      'highlights': highlights,
      'platforms': platforms,
      'playStoreUrl': playStoreUrl,
      'appStoreUrl': appStoreUrl,
      'featured': featured,
      'order': order,
    };
  }

  ProjectEntity toEntity() {
    return ProjectEntity(
      title: title,
      description: description,
      shortDescription: shortDescription,
      banner: banner,
      thumbnail: thumbnail,
      technologies: technologies,
      features: features,
      highlights: highlights,
      platforms: platforms,
      playStoreUrl: playStoreUrl,
      appStoreUrl: appStoreUrl,
      featured: featured,
      order: order
    );
  }
}