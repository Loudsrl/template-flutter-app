import 'package:flutter/material.dart';
import 'package:startproject/utils/extensions/StringExtension.dart';

import '../../utils/ConstantsUI.dart';

class TextParagraph extends StatelessWidget {
  final Color textColor;
  final String text;
  final int maxlines;
  final TextAlign textalign;
  final double fontSize;
  final bool notCapitalized;
  final bool underline;

  const TextParagraph(
      {Key? key,
      this.textColor = ConstantsUI.PRIMARY_TEXT_COLOR,
      this.text = "Non disponibile",
      this.textalign = TextAlign.left,
      this.maxlines = 3,
      this.notCapitalized = false,
      this.underline = false,
      this.fontSize = 14})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text != ""
          ? notCapitalized
              ? text
              : text.capitalize()
          : "Non disponibile",
      textAlign: textalign,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,

      // ignore: prefer_const_constructors
      style: TextStyle(
          height: 1.2,
          fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
          fontWeight: FontWeight.w200,
          fontSize: fontSize,
          color: textColor,
          overflow: TextOverflow.ellipsis,
          decoration:
              underline ? TextDecoration.underline : TextDecoration.none),
    );
  }
}
