import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int section;
  final Color color;
  final double width;
  const AppLayoutBuilder(
      {Key? key, required this.section, required this.color, this.width = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.maxWidth / 15).floor(),
            (index) => SizedBox(
              width: AppLayout.getWidth(width),
              height: AppLayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
