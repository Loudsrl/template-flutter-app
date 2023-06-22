import 'package:flutter/material.dart';

import '../pages/SplashPage/SplashPage.dart';

class RoutesEngine {
  static var allRoutes = <String, WidgetBuilder>{
    '/SplashPageView': (context) => const SplashPageView(),
  };
}
