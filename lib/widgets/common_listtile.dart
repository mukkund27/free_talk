import 'package:flutter/material.dart';
import 'package:free_talk/config/appt_config.dart';

class CommonListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final double height;
  final double width;

  const CommonListTile({Key? key, this.leading, this.title, this.subtitle, this.trailing, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          leading ?? const SizedBox(),
          SizedBox(
            width: Responsive.isMobile(context) ? width / 25 : width / 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [title ?? const SizedBox(), subtitle ?? const SizedBox()],
          ),
          const Spacer(),
          trailing ?? const SizedBox()
        ],
      ),
    );
  }
}
