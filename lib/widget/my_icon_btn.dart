import 'package:flutter/material.dart';

class MyIconBtn extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final String iconPath;
  const MyIconBtn({
    super.key,
    this.onTap,
    required this.text,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(iconPath, width: 15),
          SizedBox(width: 5),
          Text(text),
        ],
      ),
    );
  }
}