import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SeeMoreListviewWidget extends StatelessWidget {
  const SeeMoreListviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 15.h,
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 1.5.h, top: 0.5.h),
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
                          Spacer(),
                          Text(
                            "As It Was",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                          Text(
                            "Harry Styles",
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff000000)),
                          ),
                          Spacer()
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
                    child: SvgPicture.asset("assets/kalp.svg",
                        color: Color(0xffC8C8C8)),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
