import 'package:flutter/material.dart';

import '../../utils/ConstantsUI.dart';
import '../loading/Loading.dart';

// ignore: must_be_immutable
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
    this.textColor = ConstantsUI.PRIMARY_TEXT_COLOR,
    this.shadowColor = ConstantsUI.PRIMARY_SHADOW,
    this.fontSize = 16,
    this.borderRadius = 16,
    this.isButtonEnabled = true,
    this.shadowDisabled = false,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ButtonPrimaryState createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
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
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
            child: Center(
              child: widget.isLoading
                  ? const Loading(
                      textColor: Colors.white,
                      align: MainAxisAlignment.center,
                      loadingColor: ConstantsUI.PRIMARY_COLOR,
                      text: '',
                      loadingSize: 1,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.showIcon
                            ? Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  widget.icon,
                                  color: widget.textColor,
                                  size: 21.0,
                                ),
                              )
                            : Container(),
                        DefaultTextStyle(
                          style: TextStyle(
                            fontFamily: ConstantsUI.PRIMARY_FONT_NAME,
                            fontWeight: FontWeight.w600,
                            fontSize: widget.fontSize,
                            color: widget.textColor,
                          ),
                          child: Text(
                            widget.title,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
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
