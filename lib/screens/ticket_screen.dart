import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/screens/ticket_view.dart';
import 'package:ticketbokking/utils/app_info_list.dart';
import 'package:ticketbokking/utils/app_layout.dart';
import 'package:ticketbokking/utils/app_styles.dart';
import 'package:ticketbokking/widgets/column_layout.dart';
import 'package:ticketbokking/widgets/layout_builder.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    height: AppLayout.getHeight(30),
                  ),
                  const Text(
                    'Tickets',
                    style: Styles.headLineStyle2,
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(10),
                  ),
                  const TicketTabs(text1: 'Upcoming', text2: 'Previous'),
                  SizedBox(
                    height: AppLayout.getHeight(15),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
                      child: TicketView(
                        ticket: ticketList[0],
                        bgTop: Colors.white,
                        bgDown: Colors.white,
                        textRow1: Styles.textColor,
                        textRow2: Colors.black38,
                        airIcon: Colors.blue.shade200,
                        isRaduisBottom: false,
                      )),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    margin: const EdgeInsets.only(left: 20, right: 18),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              AppColumnLayout(
                                  text1: 'Flutter DB',
                                  text2: 'Passenger',
                                  direction: CrossAxisAlignment.start),
                              AppColumnLayout(
                                  text1: '5255525255',
                                  text2: 'Passport',
                                  direction: CrossAxisAlignment.end),
                            ]),
                        SizedBox(
                          height: AppLayout.getHeight(15),
                        ),
                        AppLayoutBuilder(
                          section: 15,
                          color: Colors.grey.shade300,
                          width: 5,
                        ),
                        SizedBox(
                          height: AppLayout.getHeight(15),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              AppColumnLayout(
                                  text1: '36458411255',
                                  text2: 'Number of E-Ticket',
                                  direction: CrossAxisAlignment.start),
                              AppColumnLayout(
                                  text1: '65254056',
                                  text2: 'Booking Code',
                                  direction: CrossAxisAlignment.end),
                            ]),
                        SizedBox(
                          height: AppLayout.getHeight(15),
                        ),
                        AppLayoutBuilder(
                          section: 15,
                          color: Colors.grey.shade300,
                          width: 5,
                        ),
                        SizedBox(
                          height: AppLayout.getHeight(15),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/visa1.png'),
                                          ))),
                                      const Text(
                                        ' *** 9525',
                                        style: Styles.headLineStyle2,
                                      )
                                    ],
                                  ),
                                  Text(
                                    'Payment method',
                                    style: Styles.headLineStyle4,
                                  )
                                ],
                              ),
                              const AppColumnLayout(
                                  text1: '\$249.99',
                                  text2: 'Price',
                                  direction: CrossAxisAlignment.end),
                            ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    margin: const EdgeInsets.only(left: 20, right: 18),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'Hello Flutter',
                          drawText: false,
                          height: 70,
                          width: double.infinity,
                          color: Styles.textColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
                      child: TicketView(
                        ticket: ticketList[0],
                        bgTop: const Color(0xff526799),
                        bgDown: Styles.orangeColor,
                        textRow1: Colors.white,
                        textRow2: Colors.white,
                        airIcon: Colors.white,
                        isRaduisBottom: true,
                      )),
                ])
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(30),
              top: AppLayout.getHeight(270),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 3)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(30),
              top: AppLayout.getHeight(270),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 3)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ));
  }
}
