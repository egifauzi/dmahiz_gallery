import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 396,
      color: Color(0xff393A3A),
      child: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70, top: 5, bottom: 0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Magic For a Skin',
              style:
                  GoogleFonts.raleway(fontSize: 32, color: Color(0xffA9A9A9)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                              width: 201,
                              height: 28,
                              margin: const EdgeInsets.all(15.0),
                              padding: const EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: '       Whats your E-mail',
                                    labelStyle: GoogleFonts.raleway(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                    alignLabelWithHint: true),
                              )),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Center(
                          child: Container(
                            width: 201,
                            height: 28,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Indonesia    ",
                                  style: GoogleFonts.raleway(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200),
                                  textAlign: TextAlign.center,
                                ),
                                Image.asset('arrowBott.png',
                                    alignment: AlignmentDirectional.topEnd,
                                    height: 7,
                                    width: 12),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 45,
                            ),
                            Image.asset(
                              'share.png',
                              width: 15,
                              height: 23,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Image.asset(
                              'fb.png',
                              width: 15,
                              height: 23,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Image.asset(
                              'ig.png',
                              width: 15,
                              height: 23,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Image.asset(
                              'call.png',
                              width: 15,
                              height: 23,
                              alignment: Alignment.center,
                            ),
                            SizedBox(
                              width: 46,
                            ),
                          ],
                        )
                      ],
                    )),
                Flexible(
                    flex: 4,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              FlatButton(
                                hoverColor: Colors.pink,
                                onPressed: () {},
                                child: Text(
                                  'Home',
                                  style: GoogleFonts.raleway(
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              FlatButton(
                                hoverColor: Colors.pink,
                                onPressed: () {},
                                child: Text(
                                  'News',
                                  style: GoogleFonts.raleway(
                                      fontSize: 22, color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              FlatButton(
                                hoverColor: Colors.pink,
                                onPressed: () {},
                                child: Text(
                                  'Product',
                                  style: GoogleFonts.raleway(
                                      fontSize: 22, color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              FlatButton(
                                hoverColor: Colors.pink,
                                onPressed: () {},
                                child: Text(
                                  'About Us',
                                  style: GoogleFonts.raleway(
                                      fontSize: 22, color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                ' Privacy Policy',
                                style: GoogleFonts.raleway(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              FlatButton(
                                hoverColor: Colors.pink,
                                onPressed: () {},
                                child: Text(
                                  'Privacy Policy',
                                  style: GoogleFonts.raleway(
                                      fontSize: 22, color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              FlatButton(
                                hoverColor: Colors.pink,
                                onPressed: () {},
                                child: Text(
                                  'Terms and Conditions',
                                  style: GoogleFonts.raleway(
                                      fontSize: 22, color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              FlatButton(
                                hoverColor: Colors.pink,
                                onPressed: () {},
                                child: Text(
                                  'Sitemap',
                                  style: GoogleFonts.raleway(
                                      fontSize: 22, color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Flexible(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(70, 0, 70, 0),
                      child: Image.asset(
                        'logoWhite.png',
                        width: 330,
                        height: 143,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Column(
              children: [
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    text: 'Copyright© 2021',
                    style: GoogleFonts.raleway(
                        fontSize: 14, color: Colors.white24),
                    children: <TextSpan>[
                      TextSpan(
                          text: " D'Mahiz Co. ",
                          style: GoogleFonts.raleway(color: Color(0xffC09C9D))),
                      TextSpan(
                        text: "Products LLC",
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
