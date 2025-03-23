import 'package:flutter/material.dart';
import 'package:seebook/widget/my_icon_btn.dart';

class LikeCmtShare extends StatelessWidget {
  const LikeCmtShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyIconBtn(
          iconPath: 'assets/icons/like.png',
          text: 'Like',
          onTap: () {},
        ),
        MyIconBtn(
          iconPath: 'assets/icons/comments.png',
          text: 'Comment',
          onTap: () {},
        ),
        MyIconBtn(
          iconPath: 'assets/icons/share.png',
          text: 'Share',
          onTap: () {},
        ),
      ],
    );
  }
}