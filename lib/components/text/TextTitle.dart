//import 'package:cercacasaapp/utils/extensions/StringExtesion.dart';
import 'package:flutter/material.dart';
import 'package:startproject/utils/extensions/StringExtension.dart';

import '../../utils/ConstantsUI.dart';

class TextTitle extends StatelessWidget {
  final Color textColor;
  final String? text;
  final double fontSize;
  final FontWeight weight;
  final int maxlines;
  final TextAlign textAlign;

  const TextTitle(
      {Key? key,
      this.textColor = ConstantsUI.PRIMARY_COLOR,
      this.text = "",
      this.fontSize = 16,
      this.maxlines = 2,
      this.textAlign = TextAlign.left,
      this.weight = FontWeight.w600})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text != null && text != "" ? text!.capitalize() : "",
      textAlign: textAlign,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
          fontWeight: weight,
          fontSize: fontSize,
          color: textColor,
          height: 1.2),
    );
  }
}
