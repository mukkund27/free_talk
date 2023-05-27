import 'dart:io';

import 'package:flutter/material.dart';
import 'package:free_talk/config/appt_config.dart';
import 'package:free_talk/widgets/appbar.dart';
import 'package:free_talk/widgets/comment_field.dart';
import 'package:free_talk/widgets/comments.dart';

import 'package:free_talk/widgets/description.dart';
import 'package:free_talk/widgets/like_talk_bookmark.dart';
import 'package:free_talk/widgets/tags.dart';
import 'package:free_talk/widgets/user_one_tile.dart';

import 'package:image_picker/image_picker.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> {
  File? _pickedImage;

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _pickedImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Responsive.isMobile(context)
            ? Size.fromHeight(h / 18)
            : Size.fromHeight(w / 10),
        child: Padding(
          padding: EdgeInsets.only(
              top: Responsive.isMobile(context) ? h / 25 : w / 200,
              right: w / 30),
          child: CommonAppBar(h: h, w: w),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w / 25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserOneTile(h: h, w: w),
                    SizedBox(
                      height: Responsive.isMobile(context) ? w / 30 : w / 100,
                    ),
                    Descriptions(h: h, w: w),
                    SizedBox(
                      height: Responsive.isMobile(context) ? w / 20 : w / 70,
                    ),
                    Tags(
                      h: h,
                      w: w,
                    ),
                  ]),
            ),
            SizedBox(
              height: Responsive.isMobile(context) ? w / 20 : w / 70,
            ),
            _pickedImage != null
                ? Image.file(
                    _pickedImage!,
                    height: Responsive.isMobile(context) ? h / 2.6 : w / 2,
                    width: Responsive.isMobile(context) ? w / 1 : w / 1,
                    fit: BoxFit.cover,
                  )
                : GestureDetector(
                    onTap: _pickImage,
                    child: Image.asset(
                      "asset/images/image_selection.png",
                      height: Responsive.isMobile(context) ? h / 2.6 : w / 2,
                      width: Responsive.isMobile(context) ? w / 1 : w / 1,
                      fit: BoxFit.cover,
                    ),
                  ),
            SizedBox(
              height: w / 150,
            ),
            LTB(h: h, w: w),
            Divider(
              color: AppColor.tagContainerBorder.withOpacity(0.5),
            ),
            SizedBox(
              height: Responsive.isMobile(context) ? w / 20 : w / 80,
            ),
            Comments(h: h, w: w),
            SizedBox(
              height: w / 70,
            ),
            Divider(
              color: AppColor.tagContainerBorder.withOpacity(0.5),
            ),
            SizedBox(
              height: w / 70,
            ),
            CommentTextField(
              w: w,
              h: h,
            ),
            SizedBox(
              height: w / 40,
            ),
          ],
        ),
      ),
    );
  }
}
