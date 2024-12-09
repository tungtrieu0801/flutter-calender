
import 'package:flutter/cupertino.dart';
import 'package:fluttercalender/base/controller/base_controller.dart';
import 'package:fluttercalender/utils/route_name.dart';

class HomeController extends BaseController {

  BuildContext? context;

  HomeController({this.context});

  onTapSetting() {
    Navigator.pushNamed(context!, RouteName.SETTING_VIEW);
  }

  String getGreeting() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 5 && hour < 12) {
      return 'Chào buổi sáng!';
    } else if (hour >= 12 && hour < 18) {
      return 'Chào buổi chiều!';
    } else {
      return 'Chào buổi tối!';
    }
  }
}