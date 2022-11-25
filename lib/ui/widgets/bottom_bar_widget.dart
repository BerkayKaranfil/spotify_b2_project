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
               // value.pageChange(index);
                print(index);
              },
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color.fromARGB(255, 31, 30, 30),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color:
                        value.selectedIndex == 0 ? Colors.green : Colors.white,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color:
                        value.selectedIndex == 1 ? Colors.green : Colors.white,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.book_rounded,
                    color:
                        value.selectedIndex == 2 ? Colors.green : Colors.white,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.circle,
                    color:
                        value.selectedIndex == 3 ? Colors.green : Colors.white,
                  ),
                  label: "",
                ),
              ],
            ));
  }
}
