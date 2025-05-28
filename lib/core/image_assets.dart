import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const _filePath = "assets/images";

class AppImages {
  static _AppImagesPNG png = _AppImagesPNG();
  static _AppImagesSVG svg = _AppImagesSVG();
  static _AppImagesJPG jpg = _AppImagesJPG();

  static Widget buildImageFromAsset(
    String path, {
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
  }) {
    final isSvg = path.toLowerCase().endsWith('.svg');

    return isSvg
        ? SvgPicture.asset(
          path,
          width: width,
          height: height,
          fit: fit,
          colorFilter:
              color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
        )
        : Image.asset(path, width: width, height: height, fit: fit);
  }
}

class _AppImagesPNG {
  ///png file path that has image has type [PNG]
  static String _filePathPNG(v) => "$_filePath/png/$v.png";
  String profile = _filePathPNG('profile');
  String augmentedReality = _filePathPNG('augmented_reality');
  String database = _filePathPNG('database');

  //? add file path like 👇
  // String test = _filePathPNG('test');
}

class _AppImagesSVG {
  ///svg file path that has image has type [SVG]
  // static const _filePathSVG = "$_filePath/svg";
  static String _filePathSVG(v) => "$_filePath/svg/$v.svg";
  //? add file path like 👇
  String github = _filePathSVG('github');
  String flutter = _filePathSVG('flutter');
  String dart = _filePathSVG('dart');
  String firebase = _filePathSVG('firebase');
  String bloc = _filePathSVG('bloc');
  String figma = _filePathSVG('figma');
  String git = _filePathSVG('git');
  String googlePlayConsole = _filePathSVG('google_play_console');
  String postman = _filePathSVG('postman');
  String vsCode = _filePathSVG('vs_code');
  String androidStudio = _filePathSVG('android_studio');
  String linkedIn = _filePathSVG('linkedIn');
  String email = _filePathSVG('email');
}

class _AppImagesJPG {
  ///jpg file path that has image has type [JPG]
  // static const _filePathJPG = "$_filePath/jpg";
  static String _filePathJPG(v) => "$_filePath/jpg/$v.jpg";
  //? add file path like 👇
  String quranTV = _filePathJPG('quran_tv');
}
