import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/utils/app_styles.dart';
import 'package:ticketbokking/utils/app_layout.dart';
import 'package:ticketbokking/utils/app_styles.dart';
import 'package:ticketbokking/widgets/icon_text.dart';
import 'package:ticketbokking/widgets/ticket_tabs.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          Text(
            'What are \nyou Looking for',
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          TicketTabs(text1: 'Airline Tickets', text2: 'Hotels'),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          const IconText(text: 'Departure', icon: Icons.flight_takeoff_rounded),
          SizedBox(
            height: AppLayout.getHeight(10),
          ),
          const IconText(text: 'Arrival', icon: Icons.flight_land_rounded),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
                color: const Color(0xd91130ce),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          const DoubleTextWidget(
              largeText: 'Upcoming Flights', smallText: 'View All'),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(340),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 2,
                          spreadRadius: 2),
                    ]),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(20),
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(15),
                  ),
                  Text(
                    '20% discount the Airplane Flights in the LND To US is A Good',
                    style:
                        Styles.headLineStyle3.copyWith(color: Styles.textColor),
                  )
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(180),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(20),
                            vertical: AppLayout.getHeight(20)),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15)),
                          color: const Color(0xff3ab8b8),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discount \nFor Survey',
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: AppLayout.getHeight(10),
                              ),
                              Text(
                                'Take The Survey About Our Services And Get Disscount',
                                style: Styles.headLineStyle4.copyWith(
                                    color: Colors.white, fontSize: 15),
                              )
                            ]),
                      ),
                      Positioned(
                          right: -40,
                          top: -30,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppLayout.getWidth(25),
                                vertical: AppLayout.getHeight(25)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 18, color: Color(0xff189999))),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(150),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                          color: Color(0xffec6545)),
                      child: Column(
                        children: [
                          Text(
                            'Take Love',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(10),
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                    text: '😍', style: TextStyle(fontSize: 30)),
                                TextSpan(
                                    text: '😁', style: TextStyle(fontSize: 38)),
                                TextSpan(
                                    text: '😍', style: TextStyle(fontSize: 30))
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
