import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:spotify_b2_project/providers/search_provider.dart';

import '../widgets/search_page_widgets/search_page_listview_widget.dart';
import '../widgets/search_page_widgets/search_page_textfield_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
             Align(
              alignment: Alignment.centerLeft,
               child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset("assets/popimage.svg", color: Colors.red,)),
             ),
            SizedBox(
              height: 2.h,
            ),
            SearchPageTextFormFieldWidget(),
            SizedBox(
              height: 2.h,
            ),
            Text("Tracks", style: GoogleFonts.inter(fontSize: 3.h, fontWeight: FontWeight.bold, color: Color(0xff222222)),),
            Divider(
              height: 1.h,
              color: Colors.black,
            ),
            SearchPageListviewWidget()
          ],
        ),
      ),
    );
  }
}


