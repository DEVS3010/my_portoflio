import 'social_model.dart';

class TestimonialModel {
  final String name;
  final String role;
  final String image;
  final String comment;
  final List<SocialIModel> socialLinks;

  TestimonialModel({
    required this.name,
    required this.role,
    required this.image,
    required this.comment,
    required this.socialLinks,
  });
}
