import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
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
  }
}