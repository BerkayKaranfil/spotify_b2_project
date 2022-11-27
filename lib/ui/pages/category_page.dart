import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_b2_project/ui/pages/home_page.dart';
import 'package:spotify_b2_project/ui/pages/profile_page.dart';
import 'package:spotify_b2_project/ui/widgets/bottom_bar_widget.dart';

import '../widgets/category_page_widgets/category_gridview_widget.dart';
import '../widgets/category_page_widgets/custom_textformfield_widget.dart';
import 'artics_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  // int activepage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // backgroundColor: Color.fromARGB(255, 31, 30, 30),
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6.h,
              ),
              Text(
                "Ara",
                style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff222222)),
              ),
              SizedBox(
                height: 4.h,
              ),
              CustomTextFormFieldWidget(),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    "Hepsine göz at",
                    style: GoogleFonts.inter(
                        fontSize: 22, color: Color(0xff222222)),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              CategoryGridviewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
