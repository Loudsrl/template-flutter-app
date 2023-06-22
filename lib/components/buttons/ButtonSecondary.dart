import 'package:flutter/material.dart';

import '../../utils/ConstantsUI.dart';

class ButtonSecondary extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  final double width;
  final double height;

  const ButtonSecondary({
    Key? key,
    this.text = "Accedi",
    this.width = 100,
    this.height = 56,
    this.textColor = ConstantsUI.PRIMARY_TEXT_COLOR,
    this.backgroundColor = ConstantsUI.PRIMARY_BACKGROUND,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 18),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
