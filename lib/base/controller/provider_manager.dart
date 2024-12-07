import 'package:fluttercalender/controllers/home_controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<HomeController>(
    create: (context) => HomeController(),
  ),
];
