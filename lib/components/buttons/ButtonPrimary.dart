import 'package:flutter/material.dart';

import '../../utils/ConstantsUI.dart';

class ButtonPrimary extends StatefulWidget {
  final String title;
  final double width;
  final double height;
  final bool showIcon;
  final IconData icon;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;
  final Color shadowColor;
  final double fontSize;
  final double borderRadius;
  final bool isButtonEnabled;
  final bool shadowDisabled;

  VoidCallback onTap;
  bool isLoading;

  ButtonPrimary({
    Key? key,
    this.title = "Accedi",
    this.width = 100,
    this.height = 56,
    this.showIcon = false,
    this.icon = Icons.circle,
    this.backgroundColor = ConstantsUI.PRIMARY_COLOR,
    this.borderColor = Colors.transparent,
    required this.onTap,
    this.isLoading = false,
    this.textColor = ConstantsUI.WHITE,
    this.shadowColor = ConstantsUI.PRIMARY_SHADOW,
    this.fontSize = 16,
    this.borderRadius = 16,
    this.isButtonEnabled = true,
    this.shadowDisabled = false,
  }) : super(key: key);
  _ButtonPrimaryState createState() => new _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  Widget build(BuildContext context) {
    return Container();
  }
}
