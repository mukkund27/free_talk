import 'package:flutter/material.dart';
import 'package:free_talk/widgets/user_two_tile.dart';

import '../config/appt_config.dart';
import 'common_listtile.dart';

class Comments extends StatelessWidget {
  final double h;
  final double w;

  const Comments({Key? key, required this.h, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w / 25),
          child: CommonListTile(
              height: h,
              width: w,
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
              subtitle: Text(
                "165cm • 53kg",
                style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.grey, fontWeight: FontWeight.normal),
              ),
              trailing: Icon(
                Icons.more_horiz,
                color: AppColor.moreHoriz,
                size: Responsive.isMobile(context) ? w / 80 : w / 80,
              )),
        ),
        Padding(
          padding: EdgeInsets.only(left: Responsive.isMobile(context) ? w / 5.2 : w / 12, right: w / 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
                style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription),
              ),
              SizedBox(
                height: w / 150,
              ),
              Row(
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
                  Image.asset(
                    "asset/images/talke.png",
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
              SizedBox(
                height: Responsive.isMobile(context) ? w / 20 : w / 80,
              ),
              UserTwoTile(h: h, w: w),
            ],
          ),
        ),
      ],
    );
  }
}
