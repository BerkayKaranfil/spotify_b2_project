import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../providers/bottom_nav_provider.dart';

class CustomBottomBarWidget extends StatefulWidget {
  const CustomBottomBarWidget({super.key});

  @override
  State<CustomBottomBarWidget> createState() => _CustomBottomBarWidgetState();
}

class _CustomBottomBarWidgetState extends State<CustomBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, BottomNavProvider value, child) =>
            BottomNavigationBar(
              currentIndex: value.selectedIndex,
              onTap: (index) {
                value.changeIndex(index);

                print(index);
              },
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xffFFFFFF),
             // backgroundColor: Colors.transparent,

              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/home.png",
                    color: value.selectedIndex == 0
                        ? Colors.green
                        : Color(0xff808080),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/discovery.png",
                    color: value.selectedIndex == 1
                        ? Colors.green
                        : Color(0xff808080),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/heart.png",
                    color: value.selectedIndex == 2
                        ? Colors.green
                        : Color(0xff808080),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/profile.png",
                    color: value.selectedIndex == 3
                        ? Colors.green
                        : Color(0xff808080),
                  ),
                  label: "",
                ),
              ],
            ));
  }
}
