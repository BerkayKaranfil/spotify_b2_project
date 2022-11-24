import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  List<String> songPlay = ["News", "Video", "Artist", "Podcast", "Popular"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 6.h,
            width: 100.w,
           // color: Colors.grey,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      height: 5.h,
                      width: 22.w,
                     // color: Colors.blue,
                      child: Column(
                        children: [
                          Text(
                            songPlay[index],
                            style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: currentIndex == index
                                    ? Color(0xff000000)
                                    : Color(0xffBEBEBE)),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 0.6.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                              color: currentIndex == index
                            ?  Colors.green 
                            : Colors.transparent,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
