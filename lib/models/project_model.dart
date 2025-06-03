class ProjectModel {
  final String title;
  final String description;
  final String image;
  final List<String> images;
  final String link;
  final List<String> tags;
  final bool isFeatured;
  final String? github;
  final String? liveDemo;
  final String? associatedWith;

  ProjectModel({
    required this.title,
    required this.description,
    required this.image,
    required this.images,
    required this.link,
    required this.tags,
    this.isFeatured = false,
    this.github,
    this.liveDemo,
    this.associatedWith,
  });
}
