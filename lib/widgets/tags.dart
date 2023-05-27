import 'package:flutter/material.dart';

import '../config/appt_config.dart';

class Tags extends StatelessWidget {
  final double h;
  final double w;

  const Tags({Key? key, required this.h, required this.w}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.0, // Horizontal spacing between widgets
      runSpacing: 8.0, // Vertical spacing between rows of widgets
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(border: Border.all(color: AppColor.tagContainerBorder), color: AppColor.tagContainer, borderRadius: BorderRadius.circular(12)),
          child: Text(
            "#2023",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.tagText),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(color: AppColor.tagContainer, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColor.tagContainerBorder)),
          child: Text(
            "#TODAYISMONDAY",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.tagText),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(color: AppColor.tagContainer, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColor.tagContainerBorder)),
          child: Text(
            "#TOP",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.tagText),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(color: AppColor.tagContainer, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColor.tagContainerBorder)),
          child: Text(
            "#POPS!",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.tagText),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(color: AppColor.tagContainer, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColor.tagContainerBorder)),
          child: Text(
            "#WOW",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.tagText),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(color: AppColor.tagContainer, borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColor.tagContainerBorder)),
          child: Text(
            "#ROW",
            style: TextStyle(fontSize: Responsive.isMobile(context) ? w / AppText.description : w / AppText.webDescription, color: AppColor.tagText),
          ),
        ),
      ],
    );
  }
}
