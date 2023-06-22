import 'package:flutter/material.dart';

import '../pages/SplashPage/SplashPage.view.dart';
import '../pages/app/Home/Home.view.dart';
import '../pages/app/Home2/Home2.view.dart';
import '../pages/app/Navigation/NavigationAppBar.dart';

class RoutesEngine {
  static var allRoutes = <String, WidgetBuilder>{
    '/SplashPageView': (context) => const SplashPageView(),
    '/NavigationAppBar': (context) => const NavigationAppBar(),
    '/HomePageView1': (context) => const HomePageView(),
    '/HomePageView2': (context) => const HomePageView2(),
  };
}
