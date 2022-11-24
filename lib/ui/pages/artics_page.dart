import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_b2_project/ui/pages/category_page.dart';
import 'package:spotify_b2_project/ui/pages/profile_page.dart';

import '../widgets/artics_page_widgets/artics_bottom_listview_widget.dart';
import '../widgets/artics_page_widgets/artics_page_widget.dart';
import '../widgets/artics_page_widgets/artics_top_image_widget.dart';
import '../widgets/artics_page_widgets/artist_info_widget.dart';

class ArticsPage extends StatefulWidget {
  const ArticsPage({super.key});

  @override
  State<ArticsPage> createState() => _ArticsPageState();
}

class _ArticsPageState extends State<ArticsPage> {
  int activepage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 31, 30, 30),
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ArticsTopImageWidget(),
          SizedBox(
            height: 2.h,
          ),
          ArtistInfoWidget(),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Albums",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff222222)),
                )),
          ),
          ArticsListviewWidget(),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Songs",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff222222)),
                ),
                Container(
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            textStyle: GoogleFonts.inter(
                                fontSize: 12, fontWeight: FontWeight.w400),
                            foregroundColor: Color(0xff131313)),
                        child: Text(
                          "See More",
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          ArticsBottomListviewWidget(),
          Padding(
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticsPage(),));
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Icon(Icons.home, color: activepage == 0 ? Colors.green : Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activepage = 1;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(),));
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Icon(Icons.search, color: activepage == 1 ? Colors.green : Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
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
                      child: Icon(Icons.book_rounded, color: activepage == 2 ? Colors.green : Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activepage = 3;
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      child: Icon(Icons.circle, color: activepage == 3 ? Colors.green : Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
          // bottom navigation bar gelicek.
        ],
      ),
    );
  }
}






