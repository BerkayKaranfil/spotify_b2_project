import 'package:flutter/material.dart';
import 'package:spotify_b2_project/main.dart';
import 'package:spotify_b2_project/ui/pages/artics_page.dart';
import 'package:spotify_b2_project/ui/pages/category_page.dart';
import 'package:spotify_b2_project/ui/pages/home_pagee.dart';
import 'package:spotify_b2_project/ui/pages/profile_page.dart';

class BottomNavProvider extends ChangeNotifier {
  int selectedIndex = 0;

  changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  pageChange() {
    switch (selectedIndex) {
      case 0:
        return const Homepage();
      case 1:
        return const CategoryPage();
      case 2:
        return const ArticsPage();
      case 3:
        return const ProfilePage();
    }
  }
}
