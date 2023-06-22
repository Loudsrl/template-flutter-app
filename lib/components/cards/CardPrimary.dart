import 'package:flutter/material.dart';

class CardPrimary extends StatefulWidget {
  final double cardHeight;
  final double cardWidth;
  final BorderRadiusGeometry borderRadius;
  final List<BoxShadow> listShadow;
  final Widget contentWidget;
  final Color backgroundColor;
  final BoxBorder? boxBorder;
  final VoidCallback? onTap;

  const CardPrimary({
    Key? key,
    required this.cardHeight,
    required this.cardWidth,
    required this.contentWidget,
    required this.borderRadius,
    required this.listShadow,
    required this.backgroundColor,
    this.boxBorder,
    this.onTap,
  }) : super(key: key);
  _CardPrimaryState createState() => new _CardPrimaryState();
}

class _CardPrimaryState extends State<CardPrimary> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap == null
          ? () {}
          : () {
              widget.onTap!();
            },
      child: Container(
        height: widget.cardHeight,
        width: widget.cardWidth,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          boxShadow: widget.listShadow,
          color: widget.backgroundColor,
          border: widget.boxBorder,
        ),
        child: widget.contentWidget,
      ),
    );
  }
}
