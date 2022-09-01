import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticketbokking/screens/home_page.dart';
import 'package:ticketbokking/screens/profile_screen.dart';
import 'package:ticketbokking/screens/search_screen.dart';
import 'package:ticketbokking/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> pagedata = [
    const HomePage(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  int pageIndex = 0;

  void selectedItem(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(title: const Text('TicketBooking')),*/
      body: Center(
        child: pagedata[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedItem,
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
            label: 'home',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromARGB(255, 54, 71, 79),
        unselectedItemColor: const Color.fromARGB(255, 107, 128, 163),
      ),
    );
  }
}
