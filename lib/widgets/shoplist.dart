import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tukutas/models/shop.dart';

class ShopCard extends StatefulWidget {
  final Shop shop;
  ShopCard({this.shop});
  @override
  _ShopCardState createState() => _ShopCardState(shopp: shop);
}

class _ShopCardState extends State<ShopCard> {
  Shop shopp;
  _ShopCardState({this.shopp});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(
            5,
          ),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            shopp.imgUrl,
            width: 165,
            height: 123,
          ),
          Container(
            width: 165,
            padding: EdgeInsets.only(
              bottom: 12,
            ),
            decoration: BoxDecoration(
              color: Color(
                0xffFFFFFF,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(
                  5,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8, right: 8),
                  child: Text(
                    shopp.name,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(
                        0xff000000,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    shopp.price,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    shopp.discount,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(
                        0xff000000,
                      ),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/blackmap.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        shopp.place,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xff000000,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/star.png',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        shopp.rating,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            0xff000000,
                          ).withOpacity(
                            0.7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        shopp.isSaved
                            ? 'images/saved.png'
                            : 'images/Bookmark.png',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        'images/settings.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
