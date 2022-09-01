import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/utils/app_layout.dart';
import 'package:ticketbokking/utils/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotelInfo;
  HotelView({Key? key, required this.hotelInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 15, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
              blurRadius: 20, spreadRadius: 5, color: Colors.grey.shade200)
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(15),
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/${hotelInfo['image']}"),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(hotelInfo['palce'],
            style: Styles.headLineStyle2.copyWith(
              color: Styles.kakiColor,
            )),
        const SizedBox(
          height: 5,
        ),
        Text(hotelInfo['destination'],
            style: Styles.headLineStyle3.copyWith(
              color: Colors.white,
            )),
        const SizedBox(
          height: 8,
        ),
        Text("\$${hotelInfo['price']} / Night",
            style: Styles.headLineStyle1.copyWith(
              color: Colors.white,
            )),
      ]),
    );
  }
}
