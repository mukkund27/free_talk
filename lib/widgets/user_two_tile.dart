import 'package:flutter/material.dart';

import '../config/appt_config.dart';
import 'common_listtile.dart';

class UserTwoTile extends StatelessWidget {
  final double h;
  final double w;

  const UserTwoTile({Key? key, required this.h, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonListTile(
          height: h,
          width: w,
          leading: Container(
            height: Responsive.isMobile(context) ? w / 11 : w / 32,
            width: Responsive.isMobile(context) ? w / 11 : w / 32,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.userSecond,
                image: DecorationImage(
                  image: AssetImage("asset/images/user2.png"),
                )),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ㅇㅅㅇ",
                style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.title : w / AppText.webTitle, fontWeight: FontWeight.bold),
              ),
              Text(
                " 1일전",
                style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.grey, fontWeight: FontWeight.normal),
              ),
            ],
          ),
          trailing: Icon(
            Icons.more_horiz,
            color: AppColor.moreHoriz,
            size: Responsive.isMobile(context) ? w / 80 : w / 80,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: Responsive.isMobile(context) ? w / 7.2 : w / 26, right: w / 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
                style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription),
              ),
              SizedBox(
                height: w / 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "asset/images/heart.png",
                    width: Responsive.isMobile(context) ? w / 20 : w / 80,
                    height: Responsive.isMobile(context) ? w / 20 : w / 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 4),
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.counterText),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
