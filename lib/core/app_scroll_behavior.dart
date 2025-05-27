import 'dart:ui';

import 'package:flutter/material.dart';

//! I made this class to handle the scroll behavior of the app
//! to be able to scroll with the mouse
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.mouse,
    PointerDeviceKind.touch,
    PointerDeviceKind.trackpad,
  };
}
