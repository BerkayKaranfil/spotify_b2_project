import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticsListviewWidget extends StatelessWidget {
  const ArticsListviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 20.h,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 5,
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
    );
  }
}