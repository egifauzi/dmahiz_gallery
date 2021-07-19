import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 248, bottom: 77),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 83,
              ),
              Text(
                'Contact Us',
                style: GoogleFonts.raleway(
                    fontSize: 43, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Our mailing addres is :\nCiputri, Singaparna,\nTasikmalaya.\nPhone: 085603588791',
                style: GoogleFonts.raleway(
                    fontSize: 17, letterSpacing: 2, height: 1.8),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  Image.asset(
                    'shareMED.png',
                    width: 39,
                    height: 39,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'fbMED.png',
                    width: 39,
                    height: 39,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'igMED.png',
                    width: 39,
                    height: 39,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'callMED.png',
                    width: 39,
                    height: 39,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 195,
          ),
          Container(
            margin: EdgeInsets.only(left: 198),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Great vision great people is irrelevant.\nLet’s work together.',
                  style: GoogleFonts.raleway(
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //definisikan juga cross
                      children: [
                        Text(
                          'FIRST NAME*',
                          style: GoogleFonts.raleway(fontSize: 24),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 307,
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            maxLines: 1,
                            cursorHeight: 40,
                            cursorColor: Colors.pink,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 52,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //definisikan juga cross
                      children: [
                        Text(
                          'LAST NAME*',
                          style: GoogleFonts.raleway(fontSize: 24),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 293,
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            maxLines: 1,
                            cursorHeight: 40,
                            cursorColor: Colors.pink,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                      CrossAxisAlignment.start, //definisikan juga cross
                  children: [
                    Text(
                      'E-MAIL',
                      style: GoogleFonts.raleway(fontSize: 24),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 652,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                        maxLines: 1,
                        cursorHeight: 40,
                        cursorColor: Colors.pink,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                      CrossAxisAlignment.start, //definisikan juga cross
                  children: [
                    Text(
                      'MESSAGE*',
                      style: GoogleFonts.raleway(fontSize: 24),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 652,
                      height: 55,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                        maxLines: 1,
                        cursorHeight: 40,
                        cursorColor: Colors.pink,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:
                      CrossAxisAlignment.start, //definisikan juga cross
                  children: [
                    Text(
                      'ADDITIONAL DETAIL',
                      style: GoogleFonts.raleway(fontSize: 24),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 652,
                      height: 193,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                        maxLines: 1,
                        cursorHeight: 40,
                        cursorColor: Colors.pink,
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 44,
                ),
                FlatButton(
                    color: Color(0xff393A3A),
                    height: 59,
                    hoverColor: Colors.amber,
                    padding: EdgeInsets.symmetric(horizontal: 52, vertical: 6),
                    minWidth: 183,
                    onPressed: () {},
                    child: Text(
                      'submit',
                      style: GoogleFonts.raleway(
                          fontSize: 24, color: Colors.white),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
