import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const _filePath = "assets/images";

class AppImages {
  static _AppImagesPNG png = _AppImagesPNG();
  static _AppImagesSVG svg = _AppImagesSVG();
  static _AppImagesJPG jpg = _AppImagesJPG();
  static _AppImagesProject project = _AppImagesProject();

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

class _AppImagesProject {
  ///jpg file path that has image has type [JPG]
  // static const _filePathJPG = "$_filePath/jpg";
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPG(v) => "$v.jpg";
  //? add file path like 👇
  ZamzamProjectImages zamzam = ZamzamProjectImages();
  AlBayanProjectImages alBayan = AlBayanProjectImages();
  AlWahabProjectImages alWahab = AlWahabProjectImages();
  EcommerceProjectImages ecommerce = EcommerceProjectImages();
  ElOgraProjectImages elOgra = ElOgraProjectImages();
}
class ZamzamProjectImages{
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathPNG(v) => "$v.png";
  static String pZamzam = _filePathProject('zamzam');
  String zamzam = _filePathPNG('$pZamzam/zamzam');
}
class AlBayanProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPG(v) => "$v.jpg";
  static String pAlBayan = _filePathProject('al_bayan');
  String alBayan = _filePathJPG('$pAlBayan/al_bayan');
}

class AlWahabProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPG(v) => "$v.jpg";
  static String pAlWahab = _filePathProject('al_wahab');
  String alWahab = _filePathJPG('$pAlWahab/al_wahab');
}

class EcommerceProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPG(v) => "$v.jpg";
  static String pECommerce = _filePathProject('e-commerce');
  String eCommerce = '$pECommerce/e-commerce.gif';
  String cart = _filePathJPG('$pECommerce/cart');
  String categories = _filePathJPG('$pECommerce/categories');
  String categories1 = _filePathJPG('$pECommerce/categories1');
  String checkOut = _filePathJPG('$pECommerce/check-out');
  String checkOut1 = _filePathJPG('$pECommerce/check-out1');
  String filters = _filePathJPG('$pECommerce/filters');
  String home = _filePathJPG('$pECommerce/home');
  String login = _filePathJPG('$pECommerce/login');
  String myOrdersProcessing = _filePathJPG('$pECommerce/my_orders-processing');
  String myOrdersCancelled = _filePathJPG('$pECommerce/my-orders-cancelled');
  String orderDetailsBy = _filePathJPG('$pECommerce/order-details-by');
  String orderSuccess = _filePathJPG('$pECommerce/order-success');
  String product = _filePathJPG('$pECommerce/product');
  String product1 = _filePathJPG('$pECommerce/product1');
  String profile = _filePathJPG('$pECommerce/profile');
  String signUp = _filePathJPG('$pECommerce/sign-up');
  String sortBby = _filePathJPG('$pECommerce/sort-by');
  String splash = _filePathJPG('$pECommerce/splash');
}

class ElOgraProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPG(v) => "$v.jpg";
  static String pElOgra = _filePathProject('el_ogra');
  String elOgra = '$pElOgra/EL-Ogra.gif';
  String addTheAmountPaid = _filePathJPG('$pElOgra/add-the-amount-paid');
  String anErrorOccurred = _filePathJPG('$pElOgra/an-error-occurred');
  String bill = _filePathJPG('$pElOgra/bill');
  String dashboard = _filePathJPG('$pElOgra/dashboard');
  String home = _filePathJPG('$pElOgra/home');
  String splash = _filePathJPG('$pElOgra/splash');
  String thePaymentWasMade = _filePathJPG('$pElOgra/the-payment-was-made');

  
}