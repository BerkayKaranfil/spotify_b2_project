import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopChartWidget extends StatelessWidget {
  const TopChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset("assets/searchıcon.svg")),
              SizedBox(
                width: 20.w,
              ),
              Image.asset("assets/a3.png"),
              SizedBox(
                width: 28.w,
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/profileucnokta.svg")),
              
            ],
          ),
        ),
        Positioned(
            top: 8.h,
            left: 3.w,
            right: 3.w,
            child: 
                Container(
              height: 15.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Color(0xff42C83C),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 15, bottom: 5),
                    child: Text(
                      "New Album",
                      style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFBFBFB)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 5),
                    child: Text(
                      "Happier Than\nEver",
                      style: GoogleFonts.inter(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFBFBFB)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Billie Eilish",
                      style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFBFBFB)),
                    ),
                  ),
                ],
              ),
            )),
        Positioned(child: Image.asset("assets/a2.png"))
      ],
    );
  }
}