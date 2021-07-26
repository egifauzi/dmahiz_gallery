import 'package:dmahiz_gallery/pages/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 55),
            child: Container(
              color: Colors.transparent,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'csvNews.png',
                        width: MediaQuery.of(context).size.width,
                        height: 410,
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned(
                        right: 38,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            SelectableText('Undang Teman Anda',
                            enableInteractiveSelection: true,
                                toolbarOptions: ToolbarOptions(selectAll: true),
                                style: GoogleFonts.raleway(
                                    fontSize: 49,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white)),
                            SizedBox(
                              height: 13,
                            ),
                            SelectableText(
                              'Bagikan pengalaman anda dalam menggunakan\nproduk kami dan dapatkan potongan 20% di\nproduk selanjutnya yang kamu pesan',
                              enableInteractiveSelection: true,
                              toolbarOptions: ToolbarOptions(selectAll: true),
                              style: GoogleFonts.raleway(
                                  fontSize: 20, color: Colors.white),
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(
                              height: 62,
                            ),
                            SelectableText(
                              '*Klik di bawah ini untuk informasi lebih lanjut ',
                              enableInteractiveSelection: true,
                              toolbarOptions: ToolbarOptions(selectAll: true),
                              style: GoogleFonts.raleway(
                                  fontSize: 13, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                                color: Color(0xff403737),
                                height: 61,
                                hoverColor: Colors.pink[200],
                                padding: EdgeInsets.symmetric(
                                    horizontal: 133, vertical: 16),
                                minWidth: 424,
                                onPressed: () {},
                                child: Text(
                                  'MORE DETAILS',
                                  style: GoogleFonts.raleway(
                                      fontSize: 24, color: Colors.white),
                                )),
                            SizedBox(
                              height: 68,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 128,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 51,
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
                              height: 368,
                              
                            ),
                          ),
                          SizedBox(
                            height: 44,
                          ),
                          SelectableText(
                            'JJ glow Moisturizing lagi ada\npotongan harga sebesar 30%,\nAyo segera cek karena event ini\nterbatas.',
                            enableInteractiveSelection: true,
                            toolbarOptions: ToolbarOptions(selectAll: true),
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 174,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 51,
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
                              'widgetNews2.png',
                              width: 273,
                              height: 368,
                            ),
                          ),
                          SizedBox(
                            height: 44,
                          ),
                          SelectableText(
                            'Acne Night lagi ada potongan\nharga sebesar 30%,\nAyo segera cek karena event ini\nterbatas. ',
                            enableInteractiveSelection: true,
                            toolbarOptions: ToolbarOptions(selectAll: true),
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 174,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 51,
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
                              height: 368,
                            ),
                          ),
                          SizedBox(
                            height: 44,
                          ),
                          SelectableText(
                            'Facial Wash lagi ada potongan\nharga sebesar 30%,\nAyo segera cek karena event\nterbatas..',
                            enableInteractiveSelection: true,
                            toolbarOptions: ToolbarOptions(selectAll: true),
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 174,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 51,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 214,),
          FooterWidget()
        ],
      ),
    );
  }
}
