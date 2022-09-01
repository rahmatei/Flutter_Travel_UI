import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/utils/app_styles.dart';

import '../utils/app_layout.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconText({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(8),
            horizontal: AppLayout.getWidth(20)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color(0xffbfc2df),
            ),
            SizedBox(
              width: AppLayout.getWidth(10),
            ),
            Text(text, style: Styles.textStyle)
          ],
        ));
  }
}
