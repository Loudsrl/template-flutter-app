import 'package:flutter/material.dart';

import '../pages/SplashPage.dart';

class RoutesEngine {
  static var allRoutes = <String, WidgetBuilder>{
    '/SplashPageView': (context) => SplashPageView(),
  };
}
