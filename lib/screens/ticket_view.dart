import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbokking/utils/app_info_list.dart';
import 'package:ticketbokking/utils/app_layout.dart';
import 'package:ticketbokking/utils/app_styles.dart';
import 'package:ticketbokking/widgets/layout_builder.dart';
import 'package:ticketbokking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final Color bgTop;
  final Color bgDown;
  final Color textRow1;
  final Color textRow2;
  final Color airIcon;
  final bool isRaduisBottom;
  const TicketView(
      {Key? key,
      required this.ticket,
      required this.bgTop,
      required this.bgDown,
      required this.textRow1,
      required this.textRow2,
      required this.airIcon,
      required this.isRaduisBottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(165),
      child: Container(
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(16),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(
                AppLayout.getHeight(16),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      AppLayout.getHeight(16),
                    ),
                    topRight: Radius.circular(
                      AppLayout.getHeight(16),
                    ),
                  ),
                  color: bgTop
                  //Color(0xff526799),
                  ),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: Styles.headLineStyle3.copyWith(color: textRow1),
                    ),
                    const Spacer(),
                    ThickContainer(
                      shapeColor: airIcon,
                    ),
                    Expanded(
                      child: Stack(children: [
                        SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                      (constraints.maxWidth / 6).floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration:
                                                  BoxDecoration(color: airIcon),
                                            ),
                                          )
                                      /*(index) => const Text(
                                    '-',
                                    style: TextStyle(color: Colors.white),
                                  ),*/
                                      ),
                                );
                              },
                            )),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: airIcon,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    ThickContainer(shapeColor: airIcon),
                    const Spacer(),
                    Text(ticket['to']['code'],
                        style: Styles.headLineStyle3.copyWith(color: textRow1)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ticket['from']['name'],
                      style: Styles.headLineStyle4.copyWith(color: textRow2),
                    ),
                    Text(
                      ticket['flying_time'],
                      style: Styles.headLineStyle4.copyWith(color: textRow2),
                    ),
                    Text(
                      ticket['to']['name'],
                      style: Styles.headLineStyle4.copyWith(
                        color: textRow2,
                      ),
                    ),
                  ],
                )
              ]),
            ),
            Container(
              color: bgDown,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getHeight(12)),
                      child: const AppLayoutBuilder(
                          section: 6, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 16,
                top: 10,
                right: 16,
                bottom: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: isRaduisBottom
                      ? const Radius.circular(10)
                      : const Radius.circular(0),
                  bottomRight: isRaduisBottom
                      ? const Radius.circular(10)
                      : const Radius.circular(0),
                ),
                color: bgDown,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style:
                                Styles.headLineStyle3.copyWith(color: textRow1),
                          ),
                          Text(
                            'Date',
                            style:
                                Styles.headLineStyle4.copyWith(color: textRow2),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style:
                                Styles.headLineStyle2.copyWith(color: textRow1),
                          ),
                          Text(
                            'Deprature Time',
                            style:
                                Styles.headLineStyle4.copyWith(color: textRow2),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style:
                                Styles.headLineStyle3.copyWith(color: textRow1),
                          ),
                          Text(
                            'Number',
                            style:
                                Styles.headLineStyle4.copyWith(color: textRow2),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
