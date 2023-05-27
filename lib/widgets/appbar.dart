import 'package:flutter/material.dart';

import '../config/appt_config.dart';

class CommonAppBar extends StatelessWidget {
  final double h;
  final double w;

  const CommonAppBar({Key? key, required this.h, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              size: Responsive.isMobile(context) ? w / 10 : w / 30,
            )),
        Text(
          "자유톡",
          style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.heading : w / AppText.webHeading, fontWeight: FontWeight.bold),
        ),
        Image.asset(
          "asset/images/Vector.png",
          height: Responsive.isMobile(context) ? w / 18 : w / 50,
          width: Responsive.isMobile(context) ? w / 18 : w / 50,
        ),
      ],
    );
  }
}
