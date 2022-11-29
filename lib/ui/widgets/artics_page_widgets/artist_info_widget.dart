import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArtistInfoWidget extends StatelessWidget {
  const ArtistInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}