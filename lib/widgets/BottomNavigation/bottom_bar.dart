import 'package:assignment/features/Dashboard/dashboard.dart';
import 'package:assignment/features/Messages/Screens/messages.dart';
import 'package:assignment/features/Profile/Screens/profile.dart';
import 'package:assignment/features/Recruit/Screens/recruit.dart';
import 'package:assignment/features/Social/Screens/social.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 40;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const Dashboard(),
    const Recruit(),
    const Social(),
    const Messages(),
    const Profile()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        backgroundColor: Colors.black,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color:
                                _page == 0 ? Colors.blueAccent : Colors.blueGrey,
                            width: bottomBarBorderWidth))),
                child: const Icon(Icons.work_outline),
              ),
              label: 'Work'),
          BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color:
                                _page == 1 ? Colors.blueAccent : Colors.blueGrey,
                            width: bottomBarBorderWidth))),
                child: const Icon(Icons.handshake_outlined),
              ),
              label: 'Recruit'),
          BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color:
                                _page == 2 ? Colors.blueAccent : Colors.blueGrey,
                            width: bottomBarBorderWidth))),
                child: const Icon(Icons.person_add),
              ),
              label: 'Social'),
          BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color:
                                _page == 3 ? Colors.blueAccent : Colors.blueGrey,
                            width: bottomBarBorderWidth))),
                child: badges.Badge(
                    badgeStyle: badges.BadgeStyle(
                      badgeColor: _page == 3 ? Colors.green : Colors.blueGrey,
                      elevation: 0,
                    ),
                    child: const Icon(Icons.message_outlined)),
              ),
              label: 'Messages'),
          BottomNavigationBarItem(
            
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color:
                                _page == 4 ? Colors.blueAccent : Colors.blueGrey,
                            width: bottomBarBorderWidth))),
                child: const Icon(Icons.person),
              ),
              label: 'Profile'),
        ],
        currentIndex: _page,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
