import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String text1;
  final String text2;
  final CrossAxisAlignment direction;
  const AppColumnLayout(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.direction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: direction,
      children: [
        Text(
          text1,
          style: Styles.headLineStyle2,
        ),
        Text(
          text2,
          style: Styles.headLineStyle4,
        )
      ],
    );
  }
}
