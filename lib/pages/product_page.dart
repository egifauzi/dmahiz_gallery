import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:dmahiz_gallery/pages/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 137),
              child: Column(children: [
                Column(
                  
                  children: [
                    SelectableText(
                      'All Beauty products',
                      enableInteractiveSelection: true,
                      toolbarOptions: ToolbarOptions(selectAll: true),
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
                            child: Image.asset(
                              'widgetNews1.png',
                              width: 273,
                              height: 369,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          SelectableText(
                            'JJ Glow Moisturizing',
                            enableInteractiveSelection: true,
                            toolbarOptions: ToolbarOptions(selectAll: true),
                            style: GoogleFonts.raleway(fontSize: 24),
                          ),
                          SizedBox(
                            height: 21,
                          ),
                        SelectableText(
                            'Cream yang diformulasikan untuk melembabkan\nkulit serta mengurangi tampilan noda hitam pada\nkulit. Bahkan, dengan kandungan',
                            enableInteractiveSelection: true,
                            toolbarOptions: ToolbarOptions(selectAll: true),
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
                          child: Image.asset(
                            'widgetNews2.png',
                            width: 273,
                            height: 369,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        SelectableText(
                          'Acne Night Serum',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
                          style: GoogleFonts.raleway(fontSize: 24),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        SelectableText(
                          'Cream yang diformulasikan untuk melembabkan\nkulit serta mengurangi tampilan noda hitam pada\nkulit. Bahkan, dengan kandungan',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
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
                          child: Image.asset(
                            'widgetNews3.png',
                            width: 273,
                            height: 369,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        SelectableText(
                          'Facial Wash',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
                          style: GoogleFonts.raleway(fontSize: 24),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        SelectableText(
                          'Produk untuk membersihkan wajah berbentuk \nbusa yang mampu mengangkat semua kotoran di\nwajah, yang dapat digunakan untuk ...',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
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
                //3 bott widgets
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                          child: Image.asset(
                            'widgetNews4.png',
                            width: 273,
                            height: 369,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        SelectableText(
                          'Essence',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
                          style: GoogleFonts.raleway(fontSize: 24),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        SelectableText(
                          'Penyerapan essencepun lebih dalam dibanding\nserum dan cream karena teksturnya sbg \nkonsentrat yg cair dan ringan Tujuan ...',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
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
    
                    Container(
                       width: 426, height: 600,
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
                            child: Image.asset('imgProduct.png',)),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 18, 45),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 161,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 59, bottom: 10),
                                    child: SelectableText(
                                      'JOIN MEMBER',
                                      enableInteractiveSelection: true,
                                      toolbarOptions: ToolbarOptions(selectAll: true),
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
                                    margin: EdgeInsets.only(left: 180),
                                    child: AnimatedTextKit(animatedTexts: [TyperAnimatedText('And get 10% off\nevery order',
                                      textStyle: GoogleFonts.poppins(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                      textAlign: TextAlign.right,
                                      speed: Duration(milliseconds: 200),
                                    ),
                                    ], 
                                    repeatForever:true,)
                                    // child: SelectableText(
                                    //   'And get 10% off\nevery order',
                                    //   enableInteractiveSelection: true,
                                    //   toolbarOptions: ToolbarOptions(selectAll: true),
                                      // style: GoogleFonts.raleway(
                                      //     fontSize: 32,
                                      //     fontWeight: FontWeight.w400,
                                      //     color: Colors.white),
                                      // textAlign: TextAlign.right,
                                    // )),
                                ),
                                SizedBox(
                                  height: 30,
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
                                      'JOIN',
                                      style: GoogleFonts.raleway(
                                          fontSize: 24, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
    
                    Column(
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
                          child: Image.asset(
                            'widgetNews1.png',
                            width: 273,
                            height: 369,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        SelectableText(
                          'Toner',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
                          style: GoogleFonts.raleway(fontSize: 24),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        SelectableText(
                          'Toner yang diformulasikan untuk melembabkan\nkulit serta mengurangi tampilan noda hitam pada\nkulit. Bahkan, dengan kandungan',
                          enableInteractiveSelection: true,
                          toolbarOptions: ToolbarOptions(selectAll: true),
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
                ),
                
              ])),
              FooterWidget()
        ],
      ),
    );
  }
}
