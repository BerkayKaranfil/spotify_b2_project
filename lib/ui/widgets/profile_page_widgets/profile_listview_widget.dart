import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_b2_project/providers/profile_provider.dart';

class ProfilePageListViewWidget extends StatefulWidget {
  const ProfilePageListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePageListViewWidget> createState() =>
      _ProfilePageListViewWidgetState();
}

class _ProfilePageListViewWidgetState extends State<ProfilePageListViewWidget> {
  ProfileProvider? data2;
  @override
  void initState() {
    super.initState();
    data2 = Provider.of<ProfileProvider>(context, listen: false);
    data2!.getPublicPlaylist();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, value, widget) {
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
                            child: /* Image.asset(
                        "assets/profilelistimage.png",
                        fit: BoxFit.cover,
                      ),  */
                                Container(
                          height: 7.h,
                          width: 15.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      // value.puclicPlaylist.images![index].url.toString()
                                      value.puclicPlaylist.tracks!.items![index]
                                          .track!.album!.images![0].url
                                          .toString()),
                                  fit: BoxFit.fitWidth)),
                        )),
                        SizedBox(
                          width: 5.w,
                        ),
                        FittedBox(
                          child: Container(
                            width: 45.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  //"Dont Smile At Me",
                                  value.puclicPlaylist.tracks!.items![index]
                                      .track!.album!.name
                                      .toString(),
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Text(
                                  // "Billie Eilish",
                                  //value.puclicPlaylist.name.toString(),
                                  value.puclicPlaylist.tracks!.items![index]
                                      .track!.album!.artists![0].name
                                      .toString(),
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000)),
                                )
                              ],
                            ),
                          ),
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
      },
    );
  }
}
