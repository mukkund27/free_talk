import 'package:flutter/material.dart';

import '../config/appt_config.dart';

class LTB extends StatelessWidget {
  final double h;
  final double w;

  const LTB({Key? key, required this.h, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Row(
        children: [
          Image.asset(
            "asset/images/heart.png",
            width: Responsive.isMobile(context) ? w / 20 : w / 80,
            height: Responsive.isMobile(context) ? w / 20 : w / 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "5",
              style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.title : w / AppText.webTitle, color: AppColor.counterText),
            ),
          ),
          Image.asset(
            "asset/images/talke.png",
            width: Responsive.isMobile(context) ? w / 20 : w / 80,
            height: Responsive.isMobile(context) ? w / 20 : w / 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "5",
              style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.title : w / AppText.webTitle, color: AppColor.counterText),
            ),
          ),
          Image.asset(
            "asset/images/bookmark.png",
            width: Responsive.isMobile(context) ? w / 20 : w / 80,
            height: Responsive.isMobile(context) ? w / 20 : w / 80,
          ),
          SizedBox(
            width: Responsive.isMobile(context) ? w / 15 : w / 40,
          ),
          Icon(
            Icons.more_horiz,
            color: AppColor.grey,
            size: Responsive.isMobile(context) ? w / 20 : w / 80,
          )
        ],
      ),
    );
  }
}
