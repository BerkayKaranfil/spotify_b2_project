import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticsBottomListviewWidget extends StatelessWidget {
  const ArticsBottomListviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 14.h,
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin:
                EdgeInsets.only(left: 1.5.h, bottom: 1.5.h, right: 1.5.h),
            height: 6.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 12.h,
                      width: 6.h,
                      child: SvgPicture.asset(
                        "assets/play.svg",
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dont Smile At Me",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
                        ),
                        Text(
                          "Billie Eilish",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text("5:33",style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000)),),
                    )
                  ],
                ),
                Container(
                  height: 12.h,
                  width: 6.w,
                  child: SvgPicture.asset("assets/kalp.svg",
                      color: Color(0xffC8C8C8)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}