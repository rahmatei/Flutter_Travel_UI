import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String largeText;
  final String smallText;

  const DoubleTextWidget(
      {Key? key, required this.largeText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          largeText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () => print('Tap View All'),
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
