import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:startproject/utils/ConstantsUI.dart';
import 'package:startproject/utils/ConstantsVariablesGlobal.dart';

import 'engine/RoutesEngine.dart';

void main() {
  if (!ConstantsVariablesGlobal.DEBUG_MODE) {
    CachedNetworkImage.logLevel = CacheManagerLogLevel.none;
    debugPrint = (String? message, {int? wrapWidth}) => null;
  }
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
        debugShowCheckedModeBanner: !ConstantsVariablesGlobal.DEBUG_MODE,
        initialRoute: '/SplashPageView',
        routes: RoutesEngine.allRoutes,
        navigatorKey: ConstantsVariablesGlobal.mainNavigatorKey,
        supportedLocales: [
          const Locale('it'),
        ],
        builder: (BuildContext context, Widget? child) {
          HttpOverrides.global = MyHttpOverrides();
          return ScrollConfiguration(
            behavior: NoGlowBehaviour(),
            child: MediaQuery(
              child: child != null ? child : Container(),
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            ),
          );
        },
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

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
