import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/CommonState.dart';
import '../../../utils/ConstantsVariablesGlobal.dart';
import '../../../utils/NoAnimationMaterialPageRoute.dart';
import '../Home/Home.view.dart';
import '../Home2/Home2.view.dart';
import 'BottomNavigationAppBar.dart';

class NavigationAppBar extends StatefulWidget {
  const NavigationAppBar({
    super.key,
  });
  @override
  State<NavigationAppBar> createState() => _NavigationAppBar();
}

class _NavigationAppBar extends CommonState<NavigationAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Stack(
        children: [
          Scaffold(
            body: Navigator(
              key: ConstantsVariablesGlobal.navigatorKey,
              initialRoute: '/HomePageView',
              onGenerateRoute: (RouteSettings settings) {
                WidgetBuilder builder;
                switch (settings.name) {
                  case '/':
                    builder = (BuildContext context) => const HomePageView();
                    break;
                  case '/HomePageView':
                    builder = (BuildContext context) => const HomePageView();
                    break;
                  case '/HomePageView2':
                    builder = (BuildContext context) => const HomePageView2();
                    break;
                  default:
                    builder = (BuildContext context) => const HomePageView();
                    throw Exception('Invalid route: ${settings.name}');
                }
                return NoAnimationMaterialPageRoute(
                  builder: builder,
                  settings: settings,
                );
              },
            ),
            bottomNavigationBar: BottomNavigationAppBar(
              keyNavigator: ConstantsVariablesGlobal.navigatorKey,
              stream: ConstantsVariablesGlobal.streamBottomNavigationBar.stream,
            ),
          ),
          ConstantsVariablesGlobal.ENV_API == 'staging'
              ? Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
