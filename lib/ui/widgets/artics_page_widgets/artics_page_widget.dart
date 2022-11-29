import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_b2_project/providers/artics_provider.dart';

class ArticsListviewWidget extends StatefulWidget {
  const ArticsListviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ArticsListviewWidget> createState() => _ArticsListviewWidgetState();
}

class _ArticsListviewWidgetState extends State<ArticsListviewWidget> {
  

  @override
  Widget build(BuildContext context) {
    return Consumer<ArticsProvider>(
      builder: (context, value, Widget) {
        return Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            height: 20.h,
            width: double.infinity,
            child: ListView.builder(
              itemCount: 5,
              //value.articsAlbumList.tracks![0].album!.images![0].url!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return value.articsAlbumList.tracks !=null
                ?Padding(
                  padding: const EdgeInsets.only(top: 15, right: 15),
                  child: SizedBox(
                    height: 20.h,
                    child: Column(
                      children: [
                        Container(
                          height: 15.h,
                          width: 32.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                               image: DecorationImage(
                                  image: NetworkImage(
                                      value.articsAlbumList.tracks![index].album!.images![0].url.toString()
                                    //value.articsAlbumList.tracks![index].album.artists[0].
                                      )
                                      )  
                                      ),
                           //child: Image.asset("assets/l1.png")
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                         // "lilbubblegum",
                        value.articsAlbumList.tracks![index].artists![0].name.toString(),
                      
                          style: GoogleFonts.inter(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3A3A3A)),
                        )
                      ],
                    ),
                  ),
                )
                : Shimmer.fromColors(child: Container(
                  height: 20.h,
                ), baseColor: Colors.grey.withOpacity(0.5), highlightColor: Colors.grey.withOpacity(0.7));
              },
            ),
          ),
        );
      },
    );
  }
}
