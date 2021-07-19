import 'package:dmahiz_gallery/pages/aboutUs_page.dart';
import 'package:dmahiz_gallery/pages/contact_page.dart';
import 'package:dmahiz_gallery/pages/home_page.dart';
import 'package:dmahiz_gallery/pages/product_page.dart';
import 'package:dmahiz_gallery/pages/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'news_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  int widgetIndex = 0;
  Duration duration = Duration(milliseconds: 800);

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
            widgetIndex = index;
          });
        },
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,

            ///tingginya agar sependekpendeknya/mentok
            children: [
              Text(title,
                  style: GoogleFonts.raleway(
                    fontSize: 38,
                    fontWeight: index == selectedIndex
                        ? FontWeight.w800
                        : FontWeight.normal,
                    color: index == selectedIndex
                        ? Color(0xffC09C9D)
                        : Colors.black,
                  )),
              Container(
                width: 135,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index == selectedIndex
                      ? Color(0xFF615561)
                      : Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      //singlechildscrollview
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 38,
                horizontal: 77,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Seacrh
                  Row(
                    children: [
                      Image.asset(
                        'searchIcon.png',
                        width: 40,
                        height: 40,
                      ),

                      SizedBox(
                        width: 29,
                      ),

                      Container(
                        // height: 20,
                        width: 227,
                        padding: EdgeInsets.symmetric(horizontal: 7.0),
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        )),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: GoogleFonts.raleway(
                                fontSize: 26, color: Color(0xffC09C9D)),
                          ),
                        ),
                      )

                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     Container(
                      //       alignment: Alignment.topLeft,
                      //       child: Text(
                      //         'search',
                      //         style: GoogleFonts.raleway(fontSize: 26, color:Color(0xffC09C9D) ),textAlign: TextAlign.left,
                      //       ),
                      //     ),
                      //     Container(
                      //       width: 227,
                      //       height: 1,
                      //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                  //logo

                  Image.asset(
                    'logo.png',
                    width: 298,
                    height: 134,
                  ),
                  //user profile
                  Row(
                    children: [
                      Image.asset(
                        'head.png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(' Hi, User',
                                  style: GoogleFonts.poppins(fontSize: 26)),
                              SizedBox(width: 67),
                              Image.asset(
                                'arrowBlack.png',
                                width: 18,
                                height: 13,
                              )
                            ],
                          ),
                          FlatButton(
                            autofocus: false,
                            minWidth: 0,

                            textColor: Colors.black,
                            // hoverColor: Colors.black,
                            highlightColor: Colors.pink,

                            onPressed: () {},
                            child: Text(
                              'LOG IN OR REGISTER',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 180),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 190,
                  ),
                  navItem(title: 'HOME', index: 0),
                  SizedBox(
                    width: 45,
                  ),
                  navItem(title: 'NEWS', index: 1),
                  SizedBox(
                    width: 45,
                  ),
                  navItem(title: 'ABOUT US', index: 2),
                  SizedBox(
                    width: 45,
                  ),
                  navItem(title: 'PRODUCT', index: 3),
                  SizedBox(
                    width: 45,
                  ),
                  navItem(title: 'CONTACT', index: 4),
                  SizedBox(
                    width: 190,
                  ),
                ],
              ),
            ),

            //NOTE: CONTENTS HOME
            SizedBox(
              height: 50,
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 1100,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1100,
                      // color: Colors.white54,
                      child: IndexedStack(
                        index: widgetIndex,
                        children: [
                          HomePage(),
                          NewsPage(),
                          AboutUsPage(),
                          ProductPage(),
                          ContactPage(),
                        ],
                      ),
                    ),
                    FooterWidget()
                  ],
                ),
              ),
            ),

            //NOTE: FOOTER
            // SizedBox(height: 195,),
            // FooterWidget()
          ],
        ),
      ),
    );
  }
}
