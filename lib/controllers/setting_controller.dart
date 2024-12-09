import 'package:flutter/cupertino.dart';
import 'package:fluttercalender/base/controller/base_controller.dart';

import '../utils/route_name.dart';

class SettingController extends BaseController {

  BuildContext? context;

  SettingController({this.context});

  void settingLanguage() {
    Navigator.pushNamed(context!, RouteName.LANGUAGE_SETTING_VIEW);
  }
}