import 'package:flutter/material.dart';

class ConstantsUI {
  // COLOR
  static const Color PRIMARY_COLOR = Color.fromRGBO(0, 105, 180, 1);
  static const Color SECONDARY_COLOR = Color.fromRGBO(241, 136, 0, 1);
  static const Color TERTIARY_COLOR = Color.fromRGBO(0, 105, 180, 1);

  static const Color PRIMARY_TEXT_COLOR = Color.fromRGBO(0, 105, 180, 1);
  static const Color SECONDARY_TEXT_COLOR = Color.fromRGBO(241, 136, 0, 1);

  static const Color BLACK = Color.fromRGBO(0, 0, 0, 1);
  static const Color BLACK50 = Color.fromRGBO(0, 0, 0, 0.5);

  static const Color WHITE = Color.fromRGBO(255, 255, 255, 1);
  static const Color PRIMARY_SHADOW = Color.fromRGBO(15, 46, 77, 0.2);
  static const Color SECONDARY_SHADOW = Color.fromRGBO(89, 43, 9, 1);
  static const Color RED = Color.fromRGBO(217, 11, 11, 1);

  // BACKGROUND COLOR
  static const Color PRIMARY_BACKGROUND = Color.fromRGBO(243, 248, 252, 1);
  static const Color SECONDARY_BACKGROUND = Color.fromRGBO(243, 248, 252, 1);

  // FONTS NAME
  static const String PRIMARY_FONT_NAME = 'PulpDisplay';
  static const String SECONDARY_FONT_NAME = 'SanFranciscoPro';

  // INPUT
  static const OutlineInputBorder ENABLED_BORDER = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: ConstantsUI.PRIMARY_COLOR,
      width: 1,
    ),
  );

  static const OutlineInputBorder ERROR_BORDER = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: ConstantsUI.RED,
      width: 1,
    ),
  );

  static const OutlineInputBorder FOCUSED_ERROR_BORDER = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: ConstantsUI.RED,
      width: 2,
    ),
  );
}
