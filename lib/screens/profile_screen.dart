import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/utils/app_layout.dart';
import 'package:ticketbokking/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticketbokking/widgets/layout_builder.dart';

import '../widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: AppLayout.getHeight(25),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: AppLayout.getWidth(86),
                height: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: AppLayout.getWidth(10),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Book Tickets',
                    style: Styles.headLineStyle2,
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(3),
                  ),
                  Text(
                    'New-York',
                    style: Styles.headLineStyle4.copyWith(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(8),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color(0xfffef4f3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15),
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(5),
                        ),
                        Text(
                          'Premium Status',
                          style: Styles.headLineStyle4.copyWith(
                              color: Color(0xff526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () => print('Edit Call'),
                child: Text(
                  'Edit',
                  style: Styles.headLineStyle3,
                ),
              )
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(8),
          ),
          const Divider(),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
                height: AppLayout.getHeight(90),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Styles.primaryColor),
                child: Row(children: [
                  const CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,
                      size: 27,
                    ),
                  ),
                  SizedBox(
                    width: AppLayout.getWidth(5),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You\'v got a new award',
                        style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      Text(
                        'You have 95 flights in a year',
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.white.withOpacity(0.9)),
                      ),
                    ],
                  )
                ]),
              ),
              Positioned(
                top: -40,
                right: -45,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xff264cd2),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          const Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          Center(
            child: Text(
              '192802',
              style: Styles.headLineStyle2
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(5),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1),
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle4.copyWith(
                          fontSize: 15,
                          color: Styles.textColor.withOpacity(0.7)),
                    ),
                    Text(
                      '22 May 2022',
                      style: Styles.headLineStyle4.copyWith(
                          fontSize: 16,
                          color: Styles.textColor.withOpacity(0.7)),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      text1: '23.042',
                      text2: 'Miles',
                      direction: CrossAxisAlignment.start,
                    ),
                    AppColumnLayout(
                      text1: 'AirLine Co',
                      text2: 'Mahan Air',
                      direction: CrossAxisAlignment.end,
                    )
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                AppLayoutBuilder(section: 12, color: Colors.grey.shade300),
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      text1: '24',
                      text2: 'Miles',
                      direction: CrossAxisAlignment.start,
                    ),
                    AppColumnLayout(
                      text1: 'McDoanal\'s',
                      text2: 'Received from',
                      direction: CrossAxisAlignment.end,
                    )
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                AppLayoutBuilder(section: 12, color: Colors.grey.shade300),
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      text1: '52.340',
                      text2: 'Miles',
                      direction: CrossAxisAlignment.start,
                    ),
                    AppColumnLayout(
                      text1: 'DBestech',
                      text2: 'Received from',
                      direction: CrossAxisAlignment.end,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(10),
          ),
          Center(
            child: InkWell(
              onTap: () => print('more milre'),
              child: Text('How to get more miles',
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
