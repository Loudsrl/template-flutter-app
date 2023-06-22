import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'Home2.model.dart';

class HomePageView2 extends StatefulWidget {
  const HomePageView2({
    super.key,
  });
  @override
  HomePageView2State createState() => HomePageView2State();
}

class HomePageView2State extends State<HomePageView2>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageModel2>.reactive(
      builder: (context, model, child) => const Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home 2'),
          ],
        ),
      ),
      onViewModelReady: (model) {
        model.init(context);
      },
      viewModelBuilder: () => HomePageModel2(),
    );
  }
}
