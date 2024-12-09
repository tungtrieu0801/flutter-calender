import 'package:flutter/material.dart';
import 'package:fluttercalender/base/view/base_view.dart';
import 'package:fluttercalender/controllers/personal_controller.dart';

class PersonalView extends StatefulWidget {
  const PersonalView({super.key});

  @override
  State<PersonalView> createState() => _PersonalViewState();
}

class _PersonalViewState extends State<PersonalView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      controller: PersonalController(),
      onModelReady: (model) {},
      builder: (context, model, child) {
        return Center(
          child: Text("peronsal"),
        );
      },
    );
  }
}
