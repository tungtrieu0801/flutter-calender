import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget iconWidget({
  double? width,
  double? height,
  Color? color,
  required String assetName,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: SvgPicture.asset(
      color: color,
      assetName,
      fit: BoxFit.contain,
      alignment: Alignment.center,
    ),
  );
}