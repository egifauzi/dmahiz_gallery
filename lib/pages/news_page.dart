import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55),
      child: Container(
        color: Colors.white,
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
                      Text('Undang Teman Anda', style: GoogleFonts.raleway(fontSize:49, fontWeight: FontWeight.w300, color: Colors.white)),
                      SizedBox(height: 13,),
                      Text('Bagikan pengalaman anda dalam menggunakan\nproduk kami dan dapatkan potongan 20% di\nproduk selanjutnya yang kamu pesan', style: GoogleFonts.raleway(fontSize: 20, color: Colors.white),textAlign: TextAlign.end,),
                      SizedBox(
                        height: 62,
                      ),
                      Text('*Klik di bawah ini untuk informasi lebih lanjut ', style: GoogleFonts.raleway(fontSize: 13, color: Colors.white),
                        
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FlatButton(
                        color:  Color(0xff403737),
                        height: 61,
                        hoverColor: Colors.pink[200],
                        padding: EdgeInsets.symmetric(horizontal: 133, vertical: 16),
                        minWidth:424 ,


                        
                        onPressed: () {}, 
                        child: Text('MORE DETAILS', style: GoogleFonts.raleway(fontSize:24, color: Colors.white),)), 
                        
                      
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
                SizedBox(width: 51,),
                Column(
                  children: [
                    Image.asset(
                      'widgetNews1.png',
                      width: 273,
                      height: 368,
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    Text(
                      'JJ glow Moisturizing lagi ada\npotongan harga sebesar 30%,\nAyo segera cek karena event ini\nterbatas.', 
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
                    Image.asset(
                      'widgetNews2.png',
                      width: 273,
                      height: 368,

                    ),
                    SizedBox(height: 44,),
                    Text(
                      'Acne Night lagi ada potongan\nharga sebesar 30%,\nAyo segera cek karena event ini\nterbatas. ',
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
                    Image.asset(
                      'widgetNews3.png',
                      width: 273,
                      height: 368,
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    Text(
                      'Facial Wash lagi ada potongan\nharga sebesar 30%,\nAyo segera cek karena event\nterbatas..',
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
    );
  }
}
