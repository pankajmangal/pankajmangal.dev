class ProjectModel {
  final String title;
  final String description;
  final String image;
  final List<String> tech;
  final String? playUrl;
  final String? appStoreUrl;

  ProjectModel({
    required this.title,
    required this.description,
    required this.image,
    required this.tech,
    this.playUrl,
    this.appStoreUrl,
  });
}