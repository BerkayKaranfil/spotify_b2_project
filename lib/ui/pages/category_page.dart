import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/category_page_widgets/category_gridview_widget.dart';
import '../widgets/category_page_widgets/custom_textformfield_widget.dart';
import 'artics_page.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int activepage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Padding(
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
                  color: Colors.white),
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
                  style: GoogleFonts.inter(fontSize: 22, color: Colors.white),
                ),
                Spacer()
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            CategoryGridviewWidget(),
            Padding(
              padding: EdgeInsets.only(right: 1.5.h, left: 1.5.h),
              child: Container(
                height: 49,
                width: 400,
                //color: Colors.black.withOpacity(0.2),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 0;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryPage(),
                              ));
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.home,
                            color:
                                activepage == 0 ? Colors.green : Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 1;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArticsPage(),
                              ));
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.search,
                            color:
                                activepage == 1 ? Colors.green : Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 2;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.book_rounded,
                            color:
                                activepage == 2 ? Colors.green : Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 13.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          activepage = 3;
                        });
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        child: Icon(Icons.circle,
                            color:
                                activepage == 3 ? Colors.green : Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


