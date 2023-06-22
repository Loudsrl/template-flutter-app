import 'package:flutter/material.dart';

class CardPrimary extends StatefulWidget {
  final double cardHeight;
  final double cardWidth;
  final BorderRadius borderRadius;
  final List<BoxShadow> listShadow;
  final Widget contentWidget;
  final Color backgroundColor;
  final BoxBorder boxBorder;

  const CardPrimary({
    Key? key,
    required this.cardHeight,
    required this.cardWidth,
    required this.contentWidget,
    required this.borderRadius,
    required this.listShadow,
    required this.backgroundColor,
    required this.boxBorder,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _CardPrimaryState createState() => _CardPrimaryState();
}

class _CardPrimaryState extends State<CardPrimary> {
  @override
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
