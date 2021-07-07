import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tukutas/models/shop.dart';
import 'package:tukutas/widgets/shoplist.dart';
import 'package:tukutas/widgets/special.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (val) {},
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/homenavbar.png',
                width: 33.3,
                height: 35,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/notifnavbar.png',
                width: 37,
                height: 37,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/deliverynavbar.png',
                width: 45,
                height: 40,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/accountnavbar.png',
                width: 27,
                height: 31,
              ),
              label: ""),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(
                          0xff000000,
                        ),
                      ),
                    ),
                    width: 248,
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 17,
                        ),
                        Image.asset('images/search.png',
                            width: 20, height: 20, fit: BoxFit.cover),
                        SizedBox(
                          width: 13,
                        ),
                        Text(
                          "Search here",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000).withOpacity(
                              0.85,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
                Image.asset(
                  'images/cart.png',
                  width: 39,
                  height: 28,
                ),
                SizedBox(
                  width: 26.5,
                ),
                Image.asset(
                  'images/house.png',
                  width: 27,
                  height: 28,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Image.asset(
                    'images/map.png',
                    width: 16,
                    height: 19,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'London, UK',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 26,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Super Sale!',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff808080),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 12.58,
                left: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShopCard(
                    shop: Shop(
                      name: "Pink leather bag",
                      isSaved: true,
                      discount: "Rp 1.000.000",
                      imgUrl: 'images/pinkbag.png',
                      price: "Rp 500.000",
                      rating: "4.7 || 1K Sold",
                      place: "New York, USA",
                    ),
                  ),
                  ShopCard(
                    shop: Shop(
                      name: "Brown leather",
                      isSaved: false,
                      discount: "Rp 1.000.000",
                      imgUrl: 'images/brownbag.png',
                      price: "Rp 500.000",
                      rating: "4.0 || 1K Sold",
                      place: "New York, USA",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Special For You",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(
                    0xff000000,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  SpecialCard(
                    shop: Shop(
                      name: "Yellow leather bag",
                      imgUrl: 'images/yellowbag.png',
                      price: 'Rp 1.250.000',
                    ),
                  ),
                  SpecialCard(
                    shop: Shop(
                      name: "Red leather handbag",
                      imgUrl: 'images/redbag.png',
                      price: 'Rp 750.000',
                    ),
                  ),
                  SpecialCard(
                    shop: Shop(
                      name: "Blue backpack",
                      imgUrl: 'images/backpack.png',
                      price: 'Rp 533.000',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 59,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFFFFF).withOpacity(0.2),
                    Color(0xff000000).withOpacity(0.5),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "See more+",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000).withOpacity(
                    0.75,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
