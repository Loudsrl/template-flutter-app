import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  final String? text;
  final Color? textColor;
  final EdgeInsets? textPadding;

  final MainAxisAlignment align;
  final Color loadingColor;
  final double loadingSize;
  final EdgeInsets? loadingPadding;

  const Loading({
    Key? key,
    this.text,
    this.textColor,
    required this.align,
    required this.loadingColor,
    required this.loadingSize,
    this.loadingPadding,
    this.textPadding,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.loadingSize + 20,
      width: widget.loadingSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: widget.align,
        children: [
          Container(
            height: widget.loadingSize,
            width: widget.loadingSize,
            padding: widget.loadingPadding != null
                ? widget.loadingPadding!
                : const EdgeInsets.all(20),
            child: CircularProgressIndicator(
              color: widget.loadingColor,
            ),
          ),
          widget.text != null
              ? Padding(
                  padding: widget.textPadding != null
                      ? widget.textPadding!
                      : const EdgeInsets.only(top: 8),
                  child: Text(
                    widget.text!,
                    style: TextStyle(color: widget.textColor),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
