import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/utils/app_info_list.dart';
import 'package:ticketbokking/screens/hotel_view.dart';
import 'package:ticketbokking/screens/ticket_view.dart';
import 'package:ticketbokking/utils/app_layout.dart';
import 'package:ticketbokking/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticketbokking/widgets/double_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Book Tickets',
                          style: Styles.headLineStyle2,
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/image_1.png'),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: AppLayout.getWidth(25),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xffbfc205),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppLayout.getWidth(15),
                ),
                const DoubleTextWidget(
                    largeText: 'Upcoming Flights', smallText: 'View All')
              ],
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList
                    .map((tick) => TicketView(
                          ticket: tick,
                          bgTop: const Color(0xff526799),
                          bgDown: Styles.orangeColor,
                          textRow1: Colors.white,
                          textRow2: Colors.white,
                          airIcon: Colors.white,
                          isRaduisBottom: true,
                        ))
                    .toList()),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleTextWidget(
                largeText: 'Hotels', smallText: 'View All'),
          ),
          SizedBox(
            height: AppLayout.getWidth(15),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: hotelList
                  .map((hotel) => HotelView(hotelInfo: hotel))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
