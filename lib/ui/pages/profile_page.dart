import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_b2_project/ui/pages/artics_page.dart';
import 'package:spotify_b2_project/ui/pages/category_page.dart';
import 'package:spotify_b2_project/ui/pages/home_page.dart';
import 'package:spotify_b2_project/ui/widgets/bottom_bar_widget.dart';

import '../widgets/profile_page_widgets/profile_chart_widget.dart';
import '../widgets/profile_page_widgets/profile_listview_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 // int activepage = 0;
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
          ProfileChartWidget(),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "PUBLIC PLAYLIST",
              style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff222222)),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          ProfilePageListViewWidget(),
           /* Padding(
              padding: EdgeInsets.only(right: 1.5.h, left: 1.5.h),
              child: Container(
                height: 49,
                width: 400,
                //color: Colors.black.withOpacity(0.2),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 0;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryPage(),
                              ));
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.home,
                            color:
                                activepage == 0 ? Colors.green : Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 1;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArticsPage(),
                              ));
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.search,
                            color:
                                activepage == 1 ? Colors.green : Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 2;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.book_rounded,
                            color:
                                activepage == 2 ? Colors.green : Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 3;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.circle,
                            color:
                                activepage == 3 ? Colors.green : Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            )  */ 
        ],
      ),
    
    );
  }
}




