import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttercalender/base/view/base_view.dart';
import 'package:fluttercalender/controllers/language_controller.dart';
import 'package:fluttercalender/controllers/setting_controller.dart';
import 'package:fluttercalender/widgets/iconWidget.dart';

import '../../main.dart';
import '../../model/language_model.dart';
import '../../utils/assets_util.dart';



class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {

  @override
  Widget build(BuildContext context) {
    return BaseView(
      controller: SettingController(context: context),
      onModelReady: (model) {},
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<Language>(
                    elevation: 16,
                    borderRadius: BorderRadius.circular(8),
                    underline: Container(
                      height: 2,
                    ),
                    hint: Row(
                      children: [
                        Text("chọn ngôn ngữ"),
                        SizedBox(
                          width: 6.w,
                        ),
                      ],
                    ),
                    onChanged: (Language? language) async {
                      if (language != null) {
                        Locale locale = await setLocale(language.languageCode);
                        MyApp.setLocale(context, locale);
                      }
                    },
                    items: Language.languageList(context)
                        .map<DropdownMenuItem<Language>>((e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        children: [
                          Text(e.flag),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(e.name)
                        ],
                      ),
                    ))
                        .toList(),
                  ),
                  Text(translation(context).afternoonGreeting, style: TextStyle(fontSize: 25.sp),)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}