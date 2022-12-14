import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_b2_project/providers/profile_provider.dart';

class ProfileChartWidget extends StatefulWidget {
  ProfileChartWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileChartWidget> createState() => _ProfileChartWidgetState();
}

class _ProfileChartWidgetState extends State<ProfileChartWidget> {
  

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, value, Widget) {
        return value.profileList.followers != null
            ? Container(
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
                            icon:
                                SvgPicture.asset("assets/profileucnokta.svg")),
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
                        value.profileList.images != null
                        ? CircleAvatar(
                          radius: 48,
                          backgroundColor: Colors.grey.withOpacity(0.1),
                          backgroundImage: NetworkImage(
                              value.profileList.images![0].url.toString()),
                        )
                        : Shimmer.fromColors(child: CircleAvatar(
                          radius: 48,
                        ), baseColor: Colors.grey.withOpacity(0.5), highlightColor: Colors.grey.withOpacity(0.7)),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          //"Soroushnorozyui@gmail.com",
                          value.profileList.email.toString(),
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff222222)),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          //"Soroushnrz",
                          value.profileList.displayName.toString(),
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
                            Text(
                                //"778",
                                value.profileList.followers!.total.toString(),
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
              )
            :
            // LinearProgressIndicator();
            Shimmer.fromColors(
                child: Container(
                  height: 40.h,
                ),
                baseColor: Colors.blue.withOpacity(0.5),
                highlightColor: Colors.red.withOpacity(0.7));
      },
    );
  }
}
