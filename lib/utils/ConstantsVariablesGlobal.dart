// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';

class ConstantsVariablesGlobal {
  static bool DEBUG_MODE = true;
  static String ENV_API = 'production';
  static bool RELEASE_MODE = true;

  //VERSIONE E BUILD
  static String version = "";
  static String buildNumber = "";
  static int MIN_BUILD = 0;

  static const String DOMAIN = '';

  //VARIABILI DEGLI STORE
  static String ID_GOOGLE_PLAY_STORE = '';
  static String ID_APP_STORE = '';

  // VARIABILI PER LA GESTIONE DELLA NAVIGAZIONE DELLA NAVBAR
  static String currentNavigatorPage = '/HomePageView';
  static GlobalKey<NavigatorState> mainNavigatorKey =
      GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static StreamController<String> streamBottomNavigationBar =
      StreamController<String>();
}
