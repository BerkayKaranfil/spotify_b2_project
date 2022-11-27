import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_b2_project/providers/news_provider.dart';

class NewsListviewWidget extends StatefulWidget {
  const NewsListviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsListviewWidget> createState() => _NewsListviewWidgetState();
}

class _NewsListviewWidgetState extends State<NewsListviewWidget> {
  NewsProvider? data4;
   bool? newsListLoaded;
  @override
  void initState() {
    newsListLoaded = true;
    Future.delayed(Duration(seconds: 2));
    newsListLoaded = false;
    super.initState();
    data4 = Provider.of<NewsProvider>(context, listen: false);
    data4!.getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, value, Widget) {
        return Container(
          height: 30.h,
          width: 100.w,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return value.newsList.tracks! != null
                  ? Container(
                      margin: EdgeInsets.only(top: 0.5.h, left: 3.w),
                      height: 42.h,
                      width: 38.w,
                      child: Column(
                        children: [
                          Container(
                            height: 24.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: NetworkImage(value.newsList
                                        .tracks![index].album!.images![0].url
                                        .toString()),
                                    fit: BoxFit.cover)),
                            child: Stack(
                              children: [
                                //Image.asset("assets/singer.png"),
                                Positioned(
                                    top: 22.h,
                                    left: 30.w,
                                    child: Image.asset("assets/miniplay.png"))
                              ],
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              //"Bad Guy",

                              value.newsList.tracks![index].album!.name
                                  .toString(),

                              style: GoogleFonts.inter(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 0.3.h,
                          ),
                          FittedBox(
                            child: Text(
                              // "Billie Eilish",
                              value.newsList.tracks![index].artists![0].name
                                  .toString(),
                              style: GoogleFonts.inter(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Shimmer.fromColors(
                      child: Container(
                        margin: EdgeInsets.only(top: 0.5.h, left: 3.w),
                        height: 42.h,
                      width: 38.w,
                      ),
                      baseColor: Colors.grey.withOpacity(0.5),
                      highlightColor: Colors.grey.withOpacity(0.7));
            },
          ),
        );
      },
    );
  }
}
