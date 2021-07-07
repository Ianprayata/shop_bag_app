import 'package:flutter/material.dart';
import 'package:tukutas/models/shop.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialCard extends StatelessWidget {
  final Shop shop;
  SpecialCard({this.shop});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 31,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
              15,
            ),
            bottomLeft: Radius.circular(
              15,
            ),
            topLeft: Radius.circular(
              10,
            ),
            topRight: Radius.circular(
              10,
            )),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Color(0xff000000).withOpacity(0.7),
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(shop.imgUrl, width: 107.51, height: 80),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffFFFFFFF),
            ),
            width: 108,
            child: Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    shop.name,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    shop.price,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
