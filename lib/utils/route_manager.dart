import 'package:flutter/material.dart';
import 'package:fluttercalender/utils/route_name.dart';

import '../views/navbar/bottom_navigation_view.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.BOTTOM_NAV_BAR:
        return buildRoute(
          widget: BottomNavigationView(),
          settings: RouteSettings(name: RouteName.BOTTOM_NAV_BAR));
      default:
        return buildRoute(
            widget: defaultPage(settings: settings));
    }
  }

  static MaterialPageRoute buildRoute({Widget? widget, RouteSettings? settings}){
    return MaterialPageRoute(builder: (context) =>
    widget!, settings: settings);
  }
  static Widget defaultPage({RouteSettings? settings}){
    return Scaffold(
      body: Center(
        child: Text('No route defined for ${settings!.name}'),
      ),
    );
  }
}