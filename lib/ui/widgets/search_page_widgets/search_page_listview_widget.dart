import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_b2_project/providers/search_provider.dart';

class SearchPageListviewWidget extends StatefulWidget {
  const SearchPageListviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPageListviewWidget> createState() =>
      _SearchPageListviewWidgetState();
}

class _SearchPageListviewWidgetState extends State<SearchPageListviewWidget> {
  @override
  void initState() {
    SearchProvider data6;
    data6 = Provider.of<SearchProvider>(context, listen: false);
    data6.getSearchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, value, widget) {
        return SizedBox(
          height: 40.h,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return value.searchList.artists != null
                  ? Row(
                      children: [
                        Container(
                            height: 14.h,
                            width: 28.w,
                            margin: EdgeInsets.only(bottom: 2.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(value.searchList.tracks!
                                    .items![index].album!.images![0].url
                                    .toString()),
                              ),
                            )),
                        SizedBox(width: 6.w),
                        Column(
                          children: [
                            SizedBox(
                              width: 58.w,
                              child: Text(
                                value.searchList.tracks!.items![0].album!.name!,
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 3.h,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            )
                          ],
                        ),
                      ],
                    )
                  : Shimmer.fromColors(
                      child: Row(
                        children: [
                          Container(
                              height: 14.h,
                              width: 28.w,
                              margin: EdgeInsets.only(bottom: 2.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ],
                      ),
                      baseColor: Colors.blueGrey.shade600,
                      highlightColor: Colors.greenAccent.shade700);
            },
          ),
        );
      },
    );
  }
}
