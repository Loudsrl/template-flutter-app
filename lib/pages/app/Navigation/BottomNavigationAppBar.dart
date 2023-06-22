import 'package:flutter/material.dart';

import '../../../utils/ConstantsUI.dart';
import '../../../utils/ConstantsVariablesGlobal.dart';

class BottomNavigationAppBar extends StatefulWidget {
  final GlobalKey<NavigatorState> keyNavigator;
  final Stream<String> stream;

  const BottomNavigationAppBar({
    super.key,
    required this.keyNavigator,
    required this.stream,
  });

  @override
  State<BottomNavigationAppBar> createState() => _BottomNavigationAppBar();
}

class _BottomNavigationAppBar extends State<BottomNavigationAppBar> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    widget.stream.listen((page) {
      debugPrint(page);
      ConstantsVariablesGlobal.currentNavigatorPage = page;
      if (mounted) setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ConstantsUI.PRIMARY_TEXT_COLOR.withOpacity(0.3),
            width: 1,
          ),
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      height: MediaQuery.of(context).padding.bottom + 62,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          item(
            context,
            '/HomePageView',
            'Home 1',
            Icons.home,
          ),
          item(
            context,
            '/HomePageView2',
            'Home 2',
            Icons.add,
          ),
        ],
      ),
    );
  }

  Widget item(
    BuildContext context,
    dynamic page,
    String name,
    IconData icon,
  ) {
    bool active =
        page.toString() == ConstantsVariablesGlobal.currentNavigatorPage;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: !active
          ? () async {
              ConstantsVariablesGlobal.streamBottomNavigationBar
                  .add(page.toString());
              ConstantsVariablesGlobal.currentNavigatorPage = page;
              widget.keyNavigator.currentState!.pushNamed(page.toString());
            }
          : () {},
      child: Opacity(
        opacity: active ? 1 : 0.3,
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom,
          ),
          width: (MediaQuery.of(context).size.width - 50) / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 27,
                color:
                    active ? ConstantsUI.RED : ConstantsUI.PRIMARY_TEXT_COLOR,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  name,
                  style: TextStyle(
                    color: ConstantsUI.PRIMARY_TEXT_COLOR,
                    fontSize: 11,
                    fontWeight: active ? FontWeight.w700 : FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
