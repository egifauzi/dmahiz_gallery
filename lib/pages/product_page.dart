import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 137),
        child: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: [
                Text(
                  'All Beauty products',
                  style: GoogleFonts.raleway(fontSize: 37),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 426,
                  height: 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),

            //3 top widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  Column(
                    children: [
                      Image.asset(
                        'widgetNews1.png',
                        width: 273,
                        height: 369,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'JJ Glow Moisturizing',
                        style: GoogleFonts.raleway(fontSize: 24),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Text(
                        'Cream yang diformulasikan untuk melembabkan\nkulit serta mengurangi tampilan noda hitam pada\nkulit. Bahkan, dengan kandungan',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(fontSize: 18),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      FlatButton(
                          color: Colors.black,
                          height: 62,
                          hoverColor: Colors.pink[200],
                          padding: EdgeInsets.symmetric(
                              horizontal: 133, vertical: 16),
                          minWidth: 426,
                          onPressed: () {},
                          child: Text(
                            'SEE DETAILS',
                            style: GoogleFonts.raleway(
                                fontSize: 24, color: Colors.white),
                          )),
                    ],
                  ),
                  Positioned(
                      top: 5,
                      left: 0.0,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 11),
                            color: Color(0xffC09C9D),
                            width: 152,
                            height: 48,
                            child: Text('NEW',
                                style: GoogleFonts.raleway(
                                    fontSize: 24, color: Colors.white),
                                textAlign: TextAlign.center),
                          )
                        ],
                      )),
                ]),
                Column(
                  children: [
                    Image.asset(
                      'widgetNews2.png',
                      width: 273,
                      height: 369,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Acne Night Serum',
                      style: GoogleFonts.raleway(fontSize: 24),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      'Cream yang diformulasikan untuk melembabkan\nkulit serta mengurangi tampilan noda hitam pada\nkulit. Bahkan, dengan kandungan',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(fontSize: 18),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    FlatButton(
                        color: Colors.black,
                        height: 62,
                        hoverColor: Colors.pink[200],
                        padding:
                            EdgeInsets.symmetric(horizontal: 133, vertical: 16),
                        minWidth: 426,
                        onPressed: () {},
                        child: Text(
                          'SEE DETAILS',
                          style: GoogleFonts.raleway(
                              fontSize: 24, color: Colors.white),
                        )),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'widgetNews3.png',
                      width: 273,
                      height: 369,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Facial Wash',
                      style: GoogleFonts.raleway(fontSize: 24),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      'Produk untuk membersihkan wajah berbentuk \nbusa yang mampu mengangkat semua kotoran di\nwajah, yang dapat digunakan untuk ...',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(fontSize: 18),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    FlatButton(
                        color: Colors.black,
                        height: 62,
                        hoverColor: Colors.pink[200],
                        padding:
                            EdgeInsets.symmetric(horizontal: 133, vertical: 16),
                        minWidth: 426,
                        onPressed: () {},
                        child: Text(
                          'SEE DETAILS',
                          style: GoogleFonts.raleway(
                              fontSize: 24, color: Colors.white),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 65,
            ),
            //3 bot widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'widgetNews4.png',
                      width: 273,
                      height: 369,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Essence',
                      style: GoogleFonts.raleway(fontSize: 24),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      'Penyerapan essencepun lebih dalam dibanding\nserum dan cream karena teksturnya sbg \nkonsentrat yg cair dan ringan Tujuan ...',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(fontSize: 18),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    FlatButton(
                        color: Colors.black,
                        height: 62,
                        hoverColor: Colors.pink[200],
                        padding:
                            EdgeInsets.symmetric(horizontal: 133, vertical: 16),
                        minWidth: 426,
                        onPressed: () {},
                        child: Text(
                          'SEE DETAILS',
                          style: GoogleFonts.raleway(
                              fontSize: 24, color: Colors.white),
                        )),
                  ],
                ),

                //image mid bot,

                Stack(
                  children: [
                    Image.asset('imgProduct.png', width: 426, height: 600),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 161,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 59),
                            child: Text(
                              'SIGN UP\nAND JOIN US',
                              style: GoogleFonts.raleway(
                                  fontSize: 57,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.right,
                            )),
                        SizedBox(
                          height: 28,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 183),
                            child: Text(
                              'And get 10% off\nyour first order',
                              style: GoogleFonts.raleway(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                              textAlign: TextAlign.right,
                            )),
                        SizedBox(
                          height: 98,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 256),
                          child: FlatButton(
                            padding: EdgeInsets.symmetric(vertical: 13),
                            height: 50,
                            minWidth: 156,
                            color: Colors.black45,
                            hoverColor: Colors.pink[200],
                            onPressed: () {},
                            child: Text(
                              'SIGN IN',
                              style: GoogleFonts.raleway(
                                  fontSize: 24, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),

                Column(
                  children: [
                    Image.asset(
                      'widgetNews1.png',
                      width: 273,
                      height: 369,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Toner',
                      style: GoogleFonts.raleway(fontSize: 24),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      'Toner yang diformulasikan untuk melembabkan\nkulit serta mengurangi tampilan noda hitam pada\nkulit. Bahkan, dengan kandungan',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(fontSize: 18),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    FlatButton(
                        color: Colors.black,
                        height: 62,
                        hoverColor: Colors.pink[200],
                        padding:
                            EdgeInsets.symmetric(horizontal: 133, vertical: 16),
                        minWidth: 426,
                        onPressed: () {},
                        child: Text(
                          'SEE DETAILS',
                          style: GoogleFonts.raleway(
                              fontSize: 24, color: Colors.white),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 77,
            )
          ]),
        ));
  }
}
