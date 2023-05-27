import 'package:flutter/material.dart';

import '../config/appt_config.dart';

class CommentTextField extends StatelessWidget {
  final double h;
  final double w;

  const CommentTextField({Key? key, required this.h, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w / 20),
      child: Row(
        children: [
          Image.asset(
            "asset/images/imagesmode.png",
            width: Responsive.isMobile(context) ? w / 20 : w / 80,
            height: Responsive.isMobile(context) ? w / 20 : w / 80,
            color: AppColor.counterText,
          ),
          SizedBox(width: w / 14),
          Text(
            "댓글을 남겨주세요.",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.title : w / AppText.webTitle, color: AppColor.moreHoriz),
          ),
          const Spacer(),
          Text(
            "등록",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.title : w / AppText.webTitle, color: AppColor.moreHoriz),
          ),
        ],
      ),
    );
  }
}
