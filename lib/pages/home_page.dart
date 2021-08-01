import 'package:carousel_slider/carousel_slider.dart';
import 'package:dmahiz_gallery/pages/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentIndex = 0;
  List cardList = [
    Item1(),
    Item2(),
    Item3(),
    // Item4(),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              autoPlay: true,
              // aspectRatio: 16/9,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 12),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              // autoPlayCurve: Curves.fastOutSlowIn,

              pauseAutoPlayOnTouch: true,
              initialPage: 1,
              // viewportFraction: 1,

              // aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  // _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: 1100,
                  width: MediaQuery.of(context).size.width,
                  child: card,
                );
              });
            }).toList(),
          ),
          Padding(
            // padding: EdgeInsets.symmetric(vertical: 195, horizontal: 70),
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 70),
            child: Row(
              children: [
                Flexible(
                    flex: 3,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 7,
                                  offset: Offset(
                                    10,
                                    12,
                                  ), // Shadow position
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: Image.asset('widgetBig.png'),
                        ),
                        Positioned(
                            top: 210,
                            right: 17,
                            child: SelectableText(
                              'Merawat Kulit lebih baik\ndaripada menutupinya\ndengan make-up',
                              enableInteractiveSelection: true,
                              toolbarOptions: ToolbarOptions(selectAll: true),
                              style: GoogleFonts.raleway(
                                  fontSize: 37,
                                  color: Colors.white,
                                  letterSpacing: 1.8,
                                  height: 1.4),
                              textAlign: TextAlign.start,
                            ))
                      ],
                    )),
                SizedBox(
                  width: 32,
                ),
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 7,
                                  offset: Offset(
                                    10,
                                    12,
                                  ), // Shadow position
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: Image.asset('Tinywidget.png'),
                        ),
                        Positioned(
                          top: 260,
                          left: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // SizedBox(height: 250,),
                              SelectableText(
                                'Delivery',
                                enableInteractiveSelection: true,
                                toolbarOptions: ToolbarOptions(selectAll: true),
                                style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SelectableText(
                                'Enjoy Free standar doll on every order.',
                                enableInteractiveSelection: true,
                                toolbarOptions: ToolbarOptions(selectAll: true),
                                style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              FlatButton(
                                padding: EdgeInsets.symmetric(vertical: 13),
                                height: 50,
                                minWidth: 156,
                                color: Color(0xffC09C9D),
                                hoverColor: Colors.black,
                                onPressed: () {},
                                child: Text(
                                  'SHOP NOW',
                                  style: GoogleFonts.raleway(
                                      fontSize: 24, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 32,
                ),
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 7,
                                  offset: Offset(
                                    10,
                                    12,
                                  ), // Shadow position
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: Image.asset('Tinywidget2.png'),
                        ),
                        Positioned(
                          top: 260,
                          left: 45,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // SizedBox(height: 250,),
                              SelectableText(
                                '24/7',
                                enableInteractiveSelection: true,
                                toolbarOptions: ToolbarOptions(selectAll: true),
                                style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SelectableText(
                                'Contact us in 24 hours a day\nand a week',
                                enableInteractiveSelection: true,
                                toolbarOptions: ToolbarOptions(selectAll: true),
                                style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              FlatButton(
                                padding: EdgeInsets.symmetric(vertical: 13),
                                height: 50,
                                minWidth: 156,
                                color: Color(0xffC09C9D),
                                hoverColor: Colors.black,
                                onPressed: () {},
                                child: Text(
                                  'PRODUCT',
                                  style: GoogleFonts.raleway(
                                      fontSize: 24, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 32,
                ),
                Flexible(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 7,
                                  offset: Offset(
                                    10,
                                    12,
                                  ), // Shadow position
                                  spreadRadius: 0.5),
                            ],
                          ),
                          child: Image.asset('Tinywidget3.png'),
                        ),
                        Positioned(
                          top: 260,
                          left: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // SizedBox(height: 250,),
                              SelectableText(
                                'BUY NOW PAY LATER',
                                enableInteractiveSelection: true,
                                toolbarOptions: ToolbarOptions(selectAll: true),
                                style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              SelectableText(
                                
                                'In four interest-free installments with\nDana, Gopay, OVO, etc.',
                                enableInteractiveSelection: true,
                                toolbarOptions: ToolbarOptions(selectAll: true),
                                style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 22,
                              ),
                              FlatButton(
                                padding: EdgeInsets.symmetric(vertical: 13),
                                height: 50,
                                minWidth: 170,
                                color: Color(0xffC09C9D),
                                hoverColor: Colors.black,
                                onPressed: () {},
                                child: Text(
                                  'LEARN MORE',
                                  style: GoogleFonts.raleway(
                                      fontSize: 24, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          FooterWidget()
        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  // const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://images.unsplash.com/photo-1627820671848-b7fe16a4ce68?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1192&q=80',
          width: MediaQuery.of(context).size.width,
          height: 800,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(90, 137, 0, 174),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'logoWhite.png',
                width: 268.33,
                height: 175.49,
              ),
              SizedBox(
                height: 46,
              ),
              SelectableText(
                'Produk kecantikan yang sudah tidak asing lagi namanya\ndan juga terbukti khasiatnya. Ya benar sekali,\nMS glow. Sekarang kami menyediakanya\nuntuk anda dengan berbagai macam jenis produk,\ndan juga kami memudahkan anda untuk lebih bisa\nmendapatkan atau memiliki produk ini.',
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(fontSize: 24, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              FlatButton(
                // focusColor: Color(0xfC09C9D),
                hoverColor: Colors.pinkAccent,
                highlightColor: Colors.black,
                color: Color(0xffC09C9D),
                height: 55,
                minWidth: 226,
                padding: EdgeInsets.symmetric(vertical: 10),
                onPressed: () {},
                child: Text(
                  'ORDER NOW',
                  style: GoogleFonts.poppins(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Item2 extends StatelessWidget {
  // const Item2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.network(
        //   'https://images.unsplash.com/photo-1567721971759-12402aedabf0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80',
        //   width: MediaQuery.of(context).size.width,
        //   height: 800,
        //   fit: BoxFit.cover,
        // ),
        Image.network(
          'https://images.unsplash.com/photo-1627820671852-817739514239?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1192&q=80',
          width: MediaQuery.of(context).size.width,
          height: 800,
          fit: BoxFit.fitWidth,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(156, 120, 0, 174),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'logoWhite.png',
                width: 268.33,
                height: 175.49,
              ),
              SizedBox(
                height: 46,
              ),
              SelectableText(
                'Filters are great\nbut great skin\nis better.',
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                // focusColor: Color(0xfC09C9D),
                color: Colors.pinkAccent,
                highlightColor: Color(0xffC09C9D),
                hoverColor: Colors.black,
                height: 55,
                minWidth: 226,
                padding: EdgeInsets.symmetric(vertical: 10),
                onPressed: () {},
                child: Text(
                  'ORDER NOW',
                  style: GoogleFonts.poppins(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 85,
              )
            ],
          ),
        )
      ],
    );
  }
}

class Item3 extends StatelessWidget {
  // const Item1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image.network(
        //   'https://images.unsplash.com/photo-1505944270255-72b8c68c6a70?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
        //   width: MediaQuery.of(context).size.width,
        //   height: 800,
        //   fit: BoxFit.cover,
        // ),
        Image.network(
          'https://images.unsplash.com/photo-1627820672014-306953fa4948?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1192&q=80',
          width: MediaQuery.of(context).size.width,
          height: 800,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(156, 137, 0, 174),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'logo.png',
                width: 268.33,
                height: 175.49,
              ),
              SizedBox(
                height: 46,
              ),
              SelectableText(
                "Dont Panic,\nit's organic",
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(fontSize: 44, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              FlatButton(
                // focusColor: Color(0xfC09C9D),
                color: Colors.pinkAccent,
                highlightColor: Color(0xffC09C9D),
                hoverColor: Colors.black,
                height: 55,
                minWidth: 226,
                padding: EdgeInsets.symmetric(vertical: 10),
                onPressed: () {},
                child:
                    // Container(
                    //   padding: EdgeInsets.symmetric(vertical: 6),
                    //   width: 226,
                    //   height: 50,
                    //   decoration: BoxDecoration(color: Color(0xffC09C9D)),
                    Text(
                  'LEARN MORE',
                  style: GoogleFonts.poppins(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

// class Item4 extends StatelessWidget {
//   // const Item1({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Image.network(
//           'https://images.unsplash.com/photo-1596771565570-b99e0852eff7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1153&q=80',
//           width: MediaQuery.of(context).size.width,
//           height: 800,
//           fit: BoxFit.cover,
//         ),
//         Padding(
//           padding: EdgeInsets.fromLTRB(156, 137, 0, 174),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Image.asset(
//                 'logo.png',
//                 width: 268.33,
//                 height: 175.49,
//               ),
//               SizedBox(
//                 height: 46,
//               ),
//               SelectableText(
//                 "There's no glowing\nwithout double cleansing",
//                 enableInteractiveSelection: true,
//                 toolbarOptions: ToolbarOptions(selectAll: true),
//                 style: GoogleFonts.raleway(fontSize: 35, color: Colors.white),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               FlatButton(
//                 // focusColor: Color(0xfC09C9D),
//                 hoverColor: Colors.pinkAccent,
//                 highlightColor: Colors.black,
//                 color: Color(0xffC09C9D),
//                 height: 55,
//                 minWidth: 226,
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 onPressed: () {},
//                 child:
//                     // Container(
//                     //   padding: EdgeInsets.symmetric(vertical: 6),
//                     //   width: 226,
//                     //   height: 50,
//                     //   decoration: BoxDecoration(color: Color(0xffC09C9D)),
//                     Text(
//                   'GO TO CATALOG',
//                   style: GoogleFonts.poppins(fontSize: 24, color: Colors.white),
//                   textAlign: TextAlign.center,
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }
