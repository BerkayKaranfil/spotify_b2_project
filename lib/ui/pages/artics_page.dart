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
import '../widgets/bottom_bar_widget.dart';
import 'home_page.dart';

class ArticsPage extends StatefulWidget {
  const ArticsPage({super.key});

  @override
  State<ArticsPage> createState() => _ArticsPageState();
}

class _ArticsPageState extends State<ArticsPage> {
  // int activepage = 0;
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
            height: 1.h,
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
        ],
      ),
    );
  }
}
