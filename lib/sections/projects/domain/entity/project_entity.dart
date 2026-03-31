class ProjectEntity {
  final String title;
  final String description;
  final String shortDescription;
  final String banner;
  final String thumbnail;
  final List<String> technologies;
  final List<String> features;
  final List<String> highlights;
  final List<String> platforms;
  final String playStoreUrl;
  final String appStoreUrl;
  final bool featured;
  final int order;

  ProjectEntity({
    required this.title,
    required this.description,
    required this.shortDescription,
    required this.banner,
    required this.thumbnail,
    required this.technologies,
    required this.features,
    required this.highlights,
    required this.platforms,
    required this.playStoreUrl,
    required this.appStoreUrl,
    required this.featured,
    required this.order,
  });
}