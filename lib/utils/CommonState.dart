import 'package:flutter/material.dart';

class CommonState<T extends StatefulWidget> extends State<T>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
