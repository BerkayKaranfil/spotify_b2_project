import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticsPage extends StatefulWidget {
  const ArticsPage({super.key});

  @override
  State<ArticsPage> createState() => _ArticsPageState();
}

class _ArticsPageState extends State<ArticsPage> {
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
          Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/rr.png",
                    fit: BoxFit.cover,
                  )),
              Positioned(
                top: 1.5.h,
                left: 1.5.h,
                child: SizedBox(
                  width: 95.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/popimage.svg")),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/ucnokta.svg")),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Column(
            children: [
              Text(
                "Billie Eilish",
                style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Color(0xff222222),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                " 2 Album , 67 Track",
                style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Color(0xff393939),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 1.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "     Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Turpis adipiscing vestibulum orci\n                enim, nascetur vitae ",
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Color(0xff838383),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
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
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 20.h,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15, right: 15),
                    child: SizedBox(
                      height: 20.h,
                      child: Column(
                        children: [
                          Container(
                              height: 15.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Image.asset("assets/l1.png")),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            "lilbubblegum",
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3A3A3A)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
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
          SizedBox(
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
                          )
                        ],
                      ),
                      Container(
                        height: 12.h,
                        width: 6.w,
                        child: SvgPicture.asset("assets/kalp.svg",color: Color(0xffC8C8C8)),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          // bottom navigation bar gelicek.
        ],
      ),
    );
  }
}
