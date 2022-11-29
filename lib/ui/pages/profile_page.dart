import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_b2_project/ui/pages/artics_page.dart';
import 'package:spotify_b2_project/ui/pages/category_page.dart';
import 'package:spotify_b2_project/ui/pages/home_pagee.dart';
import 'package:spotify_b2_project/ui/widgets/bottom_bar_widget.dart';

import '../../providers/profile_provider.dart';
import '../widgets/profile_page_widgets/profile_chart_widget.dart';
import '../widgets/profile_page_widgets/profile_listview_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileProvider? data1;
  ProfileProvider? data2;

  bool? profileListLoaded;

  @override
  void initState() {
    profileListLoaded = true;
    Future.delayed(Duration(seconds: 2));
    profileListLoaded = false;
    super.initState();
    data1 = Provider.of<ProfileProvider>(context, listen: false);
    data1!.getProfile();

    data2 = Provider.of<ProfileProvider>(context, listen: false);
    data2!.getPublicPlaylist();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInDown(child: ProfileChartWidget()),
          SizedBox(
            height: 3.h,
          ),
          FadeInLeft(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "PUBLIC PLAYLIST",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff222222)),
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          FadeInDown(child: ProfilePageListViewWidget()),
        ],
      ),
    );
  }
}
