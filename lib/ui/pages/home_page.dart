import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  List<String> songPlay = ["News", "Video", "Artist", "Podcast", "Popular"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 1.5.h,
          ),
          Stack(
            children: [
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /* SizedBox(
                      width: 1.5.h,
                    ), */
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
                    /* SizedBox(
                      width: 1.h,
                    ) */
                  ],
                ),
              ),
              Positioned(
                  top: 8.h,
                  left: 3.w,
                  right: 3.w,
                  child: /* Image.asset("assets/a1.png") */
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
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
            height: 6.h,
            width: 100.w,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      height: 5.h,
                      width: 22.w,
                      // color: Colors.blue,
                      child: Column(
                        children: [
                          Text(
                            songPlay[index],
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: currentIndex == index
                                    ? Color(0xff000000)
                                    : Color(0xffBEBEBE)),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 0.6.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? Colors.green
                                    : Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: 30.h,
            width: 100.w,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 0.5.h, left: 3.w),
                  height: 40.h,
                  width: 38.w,
                  child: Column(
                    children: [
                      Container(
                        height: 24.h,
                        child: Stack(
                          children: [
                            Image.asset("assets/singer.png"),
                            Positioned(
                                top: 20.h,
                                left: 28.w,
                                child: Image.asset("assets/miniplay.png"))
                          ],
                        ),
                      ),
                      Text(
                        "Bad Guy",
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 0.3.h,
                      ),
                      Text(
                        "Billie Eilish",
                        style: GoogleFonts.inter(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Playlist",
                  style: GoogleFonts.inter(
                      fontSize: 20,
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
          Padding(
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
          )
        ],
      ),
    );
  }
}
