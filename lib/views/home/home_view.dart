import 'package:flutter/material.dart';
import 'package:fluttercalender/base/view/base_view.dart';
import 'package:fluttercalender/controllers/home_controller.dart';
import 'package:fluttercalender/controllers/language_controller.dart';
import 'package:table_calendar/table_calendar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      controller: HomeController(context: context),
      onModelReady: (model) {},
      builder: (context, model, child) {
        return Scaffold(
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(child: Text("Setting"),
                  onTap: () {
                    model.onTapSetting();
                  },),
                  Text(translation(context).afternoonGreeting)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
