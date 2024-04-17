import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:lime/pages/profile.dart';
import 'package:lime/pages/shop.dart';
import 'package:lime/pages/test.dart';
import '../../globals.dart';
import 'locate.dart';
import 'menu.dart';

class ProjectBottomNavBar extends StatefulWidget {
  const ProjectBottomNavBar({Key? key}) : super(key: key);

  @override
  State<ProjectBottomNavBar> createState() => _ProjectBottomNavBarState();
}

class _ProjectBottomNavBarState extends State<ProjectBottomNavBar> {
  List card = [];

  void onSelectTab(int index) {
    var listWidget = [
      MenuPage(),
      ProfilePage(),
      LocatePage(),
      CartPage(cart: cart,),
    ];
    if (selectedPage != index) {
      setState(() {
        selectedPage = index;
      });
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => listWidget[selectedPage]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 76,
      color: Color(0xFF535D26),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, mainAxisSize: MainAxisSize.min, children: [
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 0 ? Image.asset('assets/icons/lemonIconPresed.png') : Image.asset("assets/icons/limeMenu.png"),
                onPressed: () {
                  onSelectTab(0);
                },
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: GestureDetector(
                  child: badges.Badge(
                    child: selectedPage == 1
                        ? Image.asset(
                      'assets/icons/memesIconPresed.png',
                      height: 30,
                    )
                        : Image.asset(
                        "assets/icons/memesIcons"
                            ".png",
                        height: 30),
                    badgeContent: Text(card.length.toString(), style: TextStyle(color: Colors.white),),
                    badgeStyle: badges.BadgeStyle(badgeColor: Color(0xff292929)),
                  ),
                  onTap: () {
                    onSelectTab(1);
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 2
                    ? Image.asset('assets/icons/LocationIconPresed.png')
                    : Image.asset(
                  "assets/icons/locationIcons.png",
                ),
                onPressed: () {
                  onSelectTab(2);
                },
              ),
            ],
          ),
        ),
        SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: selectedPage == 3
                    ? Image.asset('assets/icons/shoppingconPresed.png')
                    : Image.asset(
                  "assets/icons/shoppingIcons.png",
                ),
                onPressed: () {
                  onSelectTab(3);
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
