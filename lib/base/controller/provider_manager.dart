import 'package:fluttercalender/controllers/home_controller.dart';
import 'package:fluttercalender/controllers/navbar_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<HomeController>(
    create: (context) => HomeController(),
  ),
  ChangeNotifierProvider<NavbarController>(
    create: (context) => NavbarController(),
  )
];
