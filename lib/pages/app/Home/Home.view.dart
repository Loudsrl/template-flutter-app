import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'Home.model.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({
    super.key,
  });
  @override
  HomePageViewState createState() => HomePageViewState();
}

class HomePageViewState extends State<HomePageView>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomePageModel>.reactive(
      builder: (context, model, child) => const Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home 1'),
          ],
        ),
      ),
      onViewModelReady: (model) {
        model.init(context);
      },
      viewModelBuilder: () => HomePageModel(),
    );
  }
}
