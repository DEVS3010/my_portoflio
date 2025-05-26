import 'package:flutter/material.dart';

class FancyImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.4300061, size.height * -0.0006288);
    path.lineTo(size.width * 0.0011856, size.height * 0.0022300);
    path.lineTo(size.width * 0.0011856, size.height * 0.9999523);
    path.quadraticBezierTo(
        size.width * 0.2238292,
        size.height * 1.0117020,
        size.width * 0.2864942,
        size.height * 0.9810842);
    path.cubicTo(
        size.width * 0.3461717,
        size.height * 0.9333708,
        size.width * 0.3072634,
        size.height * 0.8729357,
        size.width * 0.3276038,
        size.height * 0.7980065);
    path.cubicTo(
        size.width * 0.3608374,
        size.height * 0.7015219,
        size.width * 0.4152690,
        size.height * 0.8138156,
        size.width * 0.4220015,
        size.height * 0.7157873);
    path.quadraticBezierTo(
        size.width * 0.4311496,
        size.height * 0.6187309,
        size.width * 0.4300061,
        size.height * -0.0006288);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class FancyClippedImage extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final BoxFit fit;

  const FancyClippedImage({
    super.key,
    required this.imagePath,
    this.width = 300,
    this.height = 400,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FancyImageClipper(),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}
