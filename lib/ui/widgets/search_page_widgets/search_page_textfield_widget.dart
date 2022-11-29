import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../providers/search_provider.dart';

class SearchPageTextFormFieldWidget extends StatefulWidget {
  const SearchPageTextFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPageTextFormFieldWidget> createState() =>
      _SearchPageTextFormFieldWidgetState();
}

class _SearchPageTextFormFieldWidgetState
    extends State<SearchPageTextFormFieldWidget> {
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
      builder: (context, value, Widget) {
        return Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextFormField(
            onChanged: (deger) {
              value.getQuery(deger);
            },
              style: GoogleFonts.inter(color: Color(0xff222222)),
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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff222222), width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff222222),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  focusColor: Colors.white)),
        );
      },
    );
  }
}
