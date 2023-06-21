import 'package:flutter/material.dart';
import 'package:startproject/utils/extensions/StringExtension.dart';

import '../../utils/ConstantsUI.dart';

class TextLongDescription extends StatelessWidget {
  final Color textColor;
  final String text;
  final int maxlines;

  const TextLongDescription(
      {Key? key,
      this.textColor = ConstantsUI.BLACK,
      this.text = "",
      this.maxlines = 20000})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.capitalize(),
      textAlign: TextAlign.left,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      // ignore: prefer_const_constructors
      style: TextStyle(
        fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
        fontWeight: FontWeight.w200,
        fontSize: 16,
        color: this.textColor,
        height: 1.5,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
