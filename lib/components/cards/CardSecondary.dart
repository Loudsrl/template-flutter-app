import 'package:flutter/material.dart';

class CardSecondary extends StatefulWidget {
  final double cardHeight;
  final double cardWidth;
  final BorderRadius borderRadius;
  final List<BoxShadow> listShadow;
  final Widget contentWidget;
  final Color backgroundColor;
  final BoxBorder boxBorder;

  const CardSecondary({
    Key? key,
    required this.cardHeight,
    required this.cardWidth,
    required this.contentWidget,
    required this.borderRadius,
    required this.listShadow,
    required this.backgroundColor,
    required this.boxBorder,
  }) : super(key: key);
  _CardSecondaryState createState() => new _CardSecondaryState();
}

class _CardSecondaryState extends State<CardSecondary> {
  Widget build(BuildContext context) {
    return Container(
      height: widget.cardHeight,
      width: widget.cardWidth,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        boxShadow: widget.listShadow,
        color: widget.backgroundColor,
        border: widget.boxBorder,
      ),
      child: widget.contentWidget,
    );
  }
}
