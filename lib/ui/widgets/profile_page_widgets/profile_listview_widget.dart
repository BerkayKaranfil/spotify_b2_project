import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfilePageListViewWidget extends StatelessWidget {
  const ProfilePageListViewWidget({
    Key? key,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
                left: 1.5.h, bottom: 1.5.h, right: 1.5.h, top: 1.5.h),
            height: 7.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      /*  height: 12.h,
                      width: 6.h, */
                      child: Image.asset(
                        "assets/profilelistimage.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont Smile At Me",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text(
                          "Billie Eilish",
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000)),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  "5:33",
                  style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000)),
                ),
                Container(
                  height: 12.h,
                  width: 6.w,
                  child: SvgPicture.asset("assets/ucnoktayatay.svg",
                      color: Color(0xffA68C8C)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}