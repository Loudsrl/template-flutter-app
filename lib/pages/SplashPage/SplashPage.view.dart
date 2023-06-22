import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:startproject/pages/app/Navigation/NavigationAppBar.dart';
import 'package:startproject/utils/ConstantsUI.dart';
import 'package:startproject/utils/NoAnimationMaterialPageRoute.dart';

import '../../components/buttons/ButtonPrimary.dart';
import 'SplashPage.model.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashPageModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text('Splash page'),
                    ),
                    ButtonPrimary(
                      onTap: () {
                        Navigator.of(
                          context,
                          rootNavigator: false,
                        ).push(
                          NoAnimationMaterialPageRoute(
                            settings:
                                const RouteSettings(name: "NavigationAppBar"),
                            builder: (context) => const NavigationAppBar(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                      title: 'Avanti',
                      width: MediaQuery.of(context).size.width / 2,
                      fontSize: 16,
                      isLoading: false,
                      textColor: Colors.white,
                      backgroundColor: ConstantsUI.PRIMARY_COLOR,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onViewModelReady: (model) {
        model.init(context);
      },
      viewModelBuilder: () => SplashPageModel(),
    );
  }
}
