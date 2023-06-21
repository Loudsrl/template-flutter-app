import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'SplashPage.model.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashPageModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          child: Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 50,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Splash page'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onModelReady: (model) {
        model.init(context);
      },
      viewModelBuilder: () => SplashPageModel(),
    );
  }
}
