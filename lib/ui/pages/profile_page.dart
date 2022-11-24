import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          Container(
            height: 40.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                SizedBox(
                  height: 1.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 1.5.h,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/profilepop.svg")),
                    SizedBox(
                      width: 27.w,
                    ),
                    Text(
                      "Profile",
                      style: GoogleFonts.inder(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff383838)),
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/profileucnokta.svg")),
                    SizedBox(
                      width: 1.h,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 48,
                      backgroundColor: Colors.grey.withOpacity(0.1),
                      child: Image.asset("assets/profilepicture.png"),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Soroushnorozyui@gmail.com",
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff222222)),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Soroushnrz",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff222222)),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: [
                        Text("778",
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff222222))),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text("Followes",
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff585858)))
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text("243",
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff222222))),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Text("Followes",
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff585858)))
                      ],
                    ),
                    Spacer(),
                  ],
                )
              ],
            ),
          ),
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
            height: 3.h,
          ),
          Container(
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
                      // Buraya şarkı süresi gelecek.
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
          )
        ],
      ),
    );
  }
}
