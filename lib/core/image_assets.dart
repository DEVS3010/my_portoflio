import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const _filePath = "assets/images";

class AppImages {
  static AppImagesPNG png = AppImagesPNG();
  static AppImagesSVG svg = AppImagesSVG();
  static AppImagesJPG jpg = AppImagesJPG();
  static AppImagesProject project = AppImagesProject();

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

class AppImagesPNG {
  ///png file path that has image has type [PNG]
  static String _filePathPNG(v) => "$_filePath/png/$v.png";
  String profile = _filePathPNG('profile');
  String augmentedReality = _filePathPNG('augmented_reality');
  String database = _filePathPNG('database');

  //? add file path like 👇
  // String test = _filePathPNG('test');
}

class AppImagesSVG {
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

class AppImagesJPG {
  ///jpg file path that has image has type [JPG]
  // static const _filePathJPG = "$_filePath/jpg";
  // static String _filePathJPG(v) => "$_filePath/jpg/$v.jpg";
  //? add file path like 👇
}

class AppImagesProject {
  ///jpg file path that has image has type [JPG]
  // static const _filePathJPG = "$_filePath/jpg";
  //? add file path like 👇
  AlBayanProjectImages alBayan = AlBayanProjectImages();
  ZamzamProjectImages zamzam = ZamzamProjectImages();
  AlWahabProjectImages alWahab = AlWahabProjectImages();
  EcommerceProjectImages ecommerce = EcommerceProjectImages();
  ElOgraProjectImages elOgra = ElOgraProjectImages();
  FlutterAnimationCvProjectImages flutterAnimationCV =
      FlutterAnimationCvProjectImages();
  CelesteProjectImages celeste = CelesteProjectImages();
  QuraniProProjectImages quraniPro = QuraniProProjectImages();
  DevsNotesProjectImages devsNotes = DevsNotesProjectImages();
  PasswordManagerProjectImages passwordManager = PasswordManagerProjectImages();
  QuranTvProjectImages quranTv = QuranTvProjectImages();
  JamallekProjectImages jamallek = JamallekProjectImages();
  PrayerTimesProjectImages prayerTimes = PrayerTimesProjectImages();
  TravelProjectImages travel = TravelProjectImages();
  ArAnimalLearningProjectImages arAnimalLearning = ArAnimalLearningProjectImages();
}

class ArAnimalLearningProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathPNG(v) => "$v.png";
  static String pArAnimalLearning = _filePathProject('ar_animal_learning');
  String p1 = _filePathPNG('$pArAnimalLearning/1');
  String p2 = _filePathPNG('$pArAnimalLearning/2');
  String p3 = _filePathPNG('$pArAnimalLearning/3');
  String p4 = _filePathPNG('$pArAnimalLearning/4');
  String p5 = _filePathPNG('$pArAnimalLearning/5');
  String p7 = _filePathPNG('$pArAnimalLearning/7');
  String p8 = _filePathPNG('$pArAnimalLearning/8');
  String p9 = _filePathPNG('$pArAnimalLearning/9');
  String p10 = _filePathPNG('$pArAnimalLearning/10');
  String p11 = _filePathPNG('$pArAnimalLearning/11');
  String p12 = _filePathPNG('$pArAnimalLearning/12');
  String p13 = _filePathPNG('$pArAnimalLearning/13');
  String p14 = _filePathPNG('$pArAnimalLearning/14');
  String p15 = _filePathPNG('$pArAnimalLearning/15');
  String p16 = _filePathPNG('$pArAnimalLearning/16');
  String p17 = _filePathPNG('$pArAnimalLearning/17');
  String p18 = _filePathPNG('$pArAnimalLearning/18');
  String p19 = _filePathPNG('$pArAnimalLearning/19');
  
}

class TravelProjectImages{
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String pTravel = _filePathProject('travel');
  String travel = '$pTravel/travel_system.png';
}

class PrayerTimesProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathPNG(v) => "$v.png";
  static String pPrayerTimes = _filePathProject('prayer-times');
  String p1 = _filePathPNG('$pPrayerTimes/1');
}

class JamallekProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathPNG(v) => "$v.png";
  static String pJamallek = _filePathProject('jamallek');
  String jamallek = '$pJamallek/3.png';
  String p1 = _filePathPNG('$pJamallek/1');
  String p2 = _filePathPNG('$pJamallek/2');
  String p3 = _filePathPNG('$pJamallek/3');
  String p4 = _filePathPNG('$pJamallek/4');
  String p5 = _filePathPNG('$pJamallek/5');
  String p6 = _filePathPNG('$pJamallek/6');
  String p7 = _filePathPNG('$pJamallek/7');
  String p8 = _filePathPNG('$pJamallek/8');
  String p9 = _filePathPNG('$pJamallek/9');
  String p10 = _filePathPNG('$pJamallek/10');
  String p11 = _filePathPNG('$pJamallek/11');
  String p12 = _filePathPNG('$pJamallek/12');
  String p13 = _filePathPNG('$pJamallek/13');
  String p14 = _filePathPNG('$pJamallek/14');
  String p15 = _filePathPNG('$pJamallek/15');
  String p16 = _filePathPNG('$pJamallek/16');
}

class QuranTvProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPEG(v) => "$v.jpeg";
  static String pQuranTv = _filePathProject('quran-tv');
  String p1 = _filePathJPEG('$pQuranTv/1');
  String p2 = _filePathJPEG('$pQuranTv/2');
  String p3 = _filePathJPEG('$pQuranTv/3');
}

class PasswordManagerProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathPNG(v) => "$v.png";
  static String pPasswordManager = _filePathProject('password-manager');
  String passwordManager = '$pPasswordManager/13.gif';
  String p1 = '$pPasswordManager/1.jpeg';
  String p2 = _filePathPNG('$pPasswordManager/2');
  String p3 = _filePathPNG('$pPasswordManager/3');
  String p4 = _filePathPNG('$pPasswordManager/4');
  String p5 = _filePathPNG('$pPasswordManager/5');
  String p6 = _filePathPNG('$pPasswordManager/6');
  String p7 = _filePathPNG('$pPasswordManager/7');
  String p8 = _filePathPNG('$pPasswordManager/8');
  String p9 = _filePathPNG('$pPasswordManager/9');
  String p10 = _filePathPNG('$pPasswordManager/10');
  String p11 = _filePathPNG('$pPasswordManager/11');
  String p12 = _filePathPNG('$pPasswordManager/12');
}

class DevsNotesProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPG(v) => "$v.jpg";
  static String pDevsNotes = _filePathProject('devs-notes');
  String devsNotes = '$pDevsNotes/devs-notes.gif';
  String addNote = _filePathJPG('$pDevsNotes/add-note');
  String drawer = _filePathJPG('$pDevsNotes/drawer');
  String drawing = _filePathJPG('$pDevsNotes/drawing');
  String home = _filePathJPG('$pDevsNotes/home');
  String searching = _filePathJPG('$pDevsNotes/searching');
  String splash = _filePathJPG('$pDevsNotes/splash');
}

class QuraniProProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";

  static String pQuraniPro = _filePathProject('qurani-pro');
  String quraniPro = '$pQuraniPro/qurani_pro.jpg';
}

class CelesteProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String _filePathJPG(v) => "$pCeleste/$v.jpg";
  static String pCeleste = _filePathProject('celeste');
  String celeste = '$pCeleste/celeste.gif';
  String clouds = _filePathJPG('clouds');
  String drawer = _filePathJPG('drawer');
  String home = _filePathJPG('home');
  String mist = _filePathJPG('mist');
  String rain = _filePathJPG('rain');
  String snow = _filePathJPG('snow');
  String snower = _filePathJPG('snower');
  String splash = _filePathJPG('splash');
  String thunderstorm = _filePathJPG('thunderstorm');
}

class FlutterAnimationCvProjectImages {
  static String _filePathProject(v) => "$_filePath/projects/$v";
  static String pFlutterCV = _filePathProject('flutter_animation_cv');
  String flutterCV = '$pFlutterCV/flutter_animation_cv.gif';
}

class ZamzamProjectImages {
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
  String p1 = _filePathJPG('$pAlWahab/1');
  String p2 = _filePathJPG('$pAlWahab/2');
  String p3 = _filePathJPG('$pAlWahab/3');
  String p4 = _filePathJPG('$pAlWahab/4');
  String p5 = _filePathJPG('$pAlWahab/5');
  String p6 = _filePathJPG('$pAlWahab/6');
  String p7 = _filePathJPG('$pAlWahab/7');
  String p8 = _filePathJPG('$pAlWahab/8');
  String p9 = _filePathJPG('$pAlWahab/9');
  String p11 = _filePathJPG('$pAlWahab/11');
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
  static String pElOgra = _filePathProject('el-ogra');
  String elOgra = '$pElOgra/EL-Ogra.gif';
  String addTheAmountPaid = _filePathJPG('$pElOgra/add-the-amount-paid');
  String anErrorOccurred = _filePathJPG('$pElOgra/an-error-occurred');
  String bill = _filePathJPG('$pElOgra/bill');
  String dashboard = _filePathJPG('$pElOgra/dashboard');
  String home = _filePathJPG('$pElOgra/home');
  String splash = _filePathJPG('$pElOgra/splash');
  String thePaymentWasMade = _filePathJPG('$pElOgra/the-payment-was-made');
}
