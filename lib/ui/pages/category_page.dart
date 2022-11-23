import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/category_page_widgets/category_gridview_widget.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                  style: GoogleFonts.inter(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                      hintText: "Ne dinlemek istiyorsun?",
                      hintStyle: TextStyle(color: Colors.black),
                      /* labelText: "Ne dinlemek istiyorsun?",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white, width: 1),
                      ), */
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      focusColor: Colors.white)),
            ),
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
            CategoryGridviewWidget()
          ],
        ),
      ),
    );
  }
}
