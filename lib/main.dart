import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttercalender/base/controller/provider_manager.dart';
import 'package:fluttercalender/utils/route_manager.dart';
import 'package:fluttercalender/utils/route_name.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiProvider(
          providers: providers,
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteManager.generateRoute,
            initialRoute: RouteName.BOTTOM_NAV_BAR,
          ),
        );
      },
    );
  }
}
