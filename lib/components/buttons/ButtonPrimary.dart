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
    return GestureDetector(
      onTap: !widget.isLoading
          ? () {
              if (widget.isButtonEnabled == true) {
                widget.onTap();
                setState(() {});
              }
            }
          : () {},
      child: Opacity(
        opacity: widget.isButtonEnabled ? 1 : 0.5,
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: widget.borderColor),
            boxShadow: widget.shadowDisabled
                ? []
                : [
                    BoxShadow(
                      color: widget.shadowColor,
                      blurRadius: 9,
                      offset: const Offset(0, 3),
                    )
                  ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 10),
            child: Center(
              child: widget.isLoading
                  // ? Loading(
                  //     color: Colors.white,
                  //   )
                  ? Container(
                      color: Colors.white,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.showIcon
                            ? Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  widget.icon,
                                  color: widget.textColor,
                                  size: 21.0,
                                ),
                              )
                            : Container(),
                        Container(
                          child: DefaultTextStyle(
                            child: Text(
                              widget.title,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            style: TextStyle(
                              fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
                              fontWeight: FontWeight.w600,
                              fontSize: widget.fontSize,
                              color: widget.textColor,
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
