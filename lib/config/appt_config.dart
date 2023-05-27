import 'package:flutter/material.dart';

class AppText {
  static const heading = 20;
  static const title = 26;
  static const description = 30;

  static const webHeading = 50;
  static const webTitle = 70;
  static const webDescription = 80;
}

class AppColor {
  static const grey = Color(0xff01B99F);
  static const userOne = Color(0xffFFDCA9);
  static const userSecond = Color(0xffFBB0AE);
  static const white = Color(0xffFFFFFF);
  static const tagContainerBorder = Color(0xffCED3DE);
  static const tagContainer = Color(0xffF7F8FA);
  static const tagText = Color(0xff5A6B87);
  static const counterText = Color(0xff919EB6);
  static const moreHoriz = Color(0xffAFB9CA);
}

class Responsive {
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 365;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width > 365;
}
