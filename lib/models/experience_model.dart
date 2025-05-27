class ExperienceModel {
  final String title;
  final String company;
  final String duration;
  final String description;
  final List<String> technologies;
  final bool isCurrent;

  ExperienceModel({
    required this.title,
    required this.company,
    required this.duration,
    required this.description,
    required this.technologies,
    this.isCurrent = false,
  });
}
