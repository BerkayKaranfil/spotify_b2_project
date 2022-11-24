//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_b2_project/providers/category_provider.dart';

class CategoryGridviewWidget extends StatefulWidget {
  CategoryGridviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryGridviewWidget> createState() => _CategoryGridviewWidgetState();
}

class _CategoryGridviewWidgetState extends State<CategoryGridviewWidget> {
  CategoryProvider? data;
  bool? categoryListLoaded;

  @override
  void initState() {
    categoryListLoaded = true;
    Future.delayed(Duration(seconds: 2));
    categoryListLoaded = false;
    super.initState();
    data = Provider.of<CategoryProvider>(context, listen: false);
    data!.getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, value, Widget) {
        return SizedBox(
          height: 57.h,
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2.h,
                mainAxisSpacing: 2.h,
                childAspectRatio: 1,
                mainAxisExtent: 100),
            itemBuilder: (context, index) {
              return value.categoriesList.categories != null
                  ? Container(
                      height: 5.h,
                      width: 10.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(image: NetworkImage(value.categoriesList.categories!.items![index].icons![0].url.toString()), fit: BoxFit.fitWidth)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                           // "Podcast'ler",
                            value.categoriesList.categories!.items![index].name.toString(),
                            style: GoogleFonts.inter(
                                fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 65.h,
                      child: Shimmer.fromColors(
                          child: Center(
                            child: Text("deneme"),
                          ),
                          baseColor: Colors.red,
                          highlightColor: Colors.blue),
                    );
            },
          ),
        );
      },
    );
  }
}
