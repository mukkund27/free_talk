import 'package:flutter/material.dart';

import '../config/appt_config.dart';
import 'common_listtile.dart';

class UserOneTile extends StatelessWidget {
  final double h;
  final double w;

  const UserOneTile({Key? key, required this.h, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonListTile(
      height: h,
      width: w,
      title: Row(
        children: [
          Text(
            "안녕 나 응애 ",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.title : w / AppText.webTitle, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.check_circle,
            color: AppColor.grey,
            size: Responsive.isMobile(context) ? w / AppText.title : w / AppText.webTitle,
          ),
          Text(
            "1일전",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.grey, fontWeight: FontWeight.normal),
          ),
        ],
      ),
      leading: Container(
        height: Responsive.isMobile(context) ? w / 9 : w / 25,
        width: Responsive.isMobile(context) ? w / 9 : w / 25,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.userOne,
            image: DecorationImage(
              image: AssetImage("asset/images/user1.png"),
            )),
      ),
      subtitle: Text(
        "165cm • 53kg",
        style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.grey, fontWeight: FontWeight.normal),
      ),
      trailing: Container(
        width: Responsive.isMobile(context) ? w / 5.8 : w / 15,
        height: Responsive.isMobile(context) ? w / 14 : w / 32,
        decoration: BoxDecoration(color: AppColor.grey, borderRadius: BorderRadius.circular(Responsive.isMobile(context) ? 12 : 22)),
        child: Center(
          child: Text(
            "팔로우",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.white, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
