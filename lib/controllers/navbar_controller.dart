import 'package:flutter/material.dart';
import 'package:fluttercalender/base/controller/base_controller.dart';
import 'package:fluttercalender/utils/assets_util.dart';
import 'package:fluttercalender/views/home/home_view.dart';
import 'package:fluttercalender/widgets/iconWidget.dart';

class NavbarController extends BaseController {
  BuildContext? context;

  NavbarController({this.context});

  int pageSelected = 0;

  void selectPage(int index) {
    pageSelected = index;
    notifyListeners();
  }

  Widget switchViewNavBar(int index) {
    switch (index) {
      case 0:
        return Homepage();

      default:
        return Homepage();
    }
  }

  List<BottomNavigationBarItem> listBottomNavBar() {
    List<BottomNavigationBarItem> listItem = [
      BottomNavigationBarItem(
        icon: iconWidget(assetName: AssetsUtils.ic_home),
        activeIcon: iconWidget(assetName: AssetsUtils.ic_person),
        label: "home",
      ),

      BottomNavigationBarItem(
        icon: iconWidget(assetName: AssetsUtils.ic_person),
        activeIcon: iconWidget(assetName: AssetsUtils.ic_person),
        label: "home",
      ),
    ];

    return listItem;
  }
}
