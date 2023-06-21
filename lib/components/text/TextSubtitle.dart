import 'package:flutter/material.dart';

import '../../utils/ConstantsUI.dart';

class TextSubtitle extends StatelessWidget {
  final Color textColor;
  final String text;
  final int maxlines;
  final TextAlign textAlign;
  final FontWeight weight;

  const TextSubtitle(
      {Key? key,
      this.textColor = ConstantsUI.BLACK50,
      this.text = "",
      this.textAlign = TextAlign.start,
      this.weight = FontWeight.w400,
      this.maxlines = 3})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      textAlign: textAlign,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      // ignore: prefer_const_constructors
      style: TextStyle(
        fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
        fontWeight: FontWeight.w200,
        fontSize: 12,
        color: textColor,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
