import 'package:flutter/material.dart';
import 'package:fluttercalender/base/view/base_view.dart';

import '../../controllers/navbar_controller.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<NavbarController>(
      controller: NavbarController(context: context),
      onModelReady: (model) {},
      builder: (context, model, child) {
        return PopScope(canPop: false, child: Scaffold(
          body: model.switchViewNavBar(model.pageSelected),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: model.pageSelected,
            onTap: model.selectPage,
            items: model.listBottomNavBar(),
          ),
        ));
      },
    );
  }
}
