import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticsTopImageWidget extends StatelessWidget {
  const ArticsTopImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}