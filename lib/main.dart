import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:startproject/utils/ConstantsUI.dart';
import 'package:startproject/utils/ConstantsVariablesGlobal.dart';

import 'engine/RoutesEngine.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: MaterialApp(
        theme: ThemeData(
          canvasColor: Colors.transparent,
          fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
          unselectedWidgetColor: ConstantsUI.BLACK,
        ),
        initialRoute: '/SplashPageView',
        routes: RoutesEngine.allRoutes,
        navigatorKey: ConstantsVariablesGlobal.mainNavigatorKey,
      ),
    );
  }
}

// ANDROID: EVITA LO SCROLL BLUE SU ANDROID
class NoGlowBehaviour extends ScrollBehavior {
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
