import 'package:dmahiz_gallery/pages/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'bgAbout.png',
                width: MediaQuery.of(context).size.width,
                height: 1100,
                fit: BoxFit.fitWidth,
              ),
              Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 110,
                    ),
                    Image.asset(
                      'logo.png',
                      width: 655,
                      height: 283,
                    ),
                    SizedBox(
                      height: 69,
                    ),
                    SelectableText(
                      'D’mahiz Gallery merupakan sebuah tempat yang menyediakan beberapa macam\nproduk kecantikan dari MS GLOW. D’mahiz gallery sangat terpercaya menghadirkan\nproduk yang keasliannya terjamin. ',
                      enableInteractiveSelection: true,
                      toolbarOptions: ToolbarOptions(selectAll: true),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(fontSize: 25),
                    ),
                    SizedBox(
                      height: 160,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          hoverColor: Colors.pink[200],
                          splashColor: Colors.black,
                          height: 240,
                          minWidth: 240,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(150)),
                          onPressed: () {},
                          onLongPress: () => _launchWAUrl(),
                          child: Image.asset(
                            'bigWA.png',
                            width: 210,
                            height: 210,
                          ),
                        ),
                        SizedBox(
                          width: 37,
                        ),
                        FlatButton(
                          hoverColor: Colors.pink[200],
                          splashColor: Colors.black,
                          height: 240,
                          minWidth: 240,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(150)),
                          onPressed: () {},
                          onLongPress: _launchFBUrl,
                          child: Image.asset(
                            'bigFB.png',
                            width: 210,
                            height: 210,
                          ),
                        ),
                        SizedBox(
                          width: 37,
                        ),
                        FlatButton(
                          hoverColor: Colors.pink[200],
                          splashColor: Colors.black,
                          height: 240,
                          minWidth: 240,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(150)),
                          onPressed: () {},
                          onLongPress: () => _launchCallUrl(),
                          child: Image.asset(
                            'bigCALL.png',
                            width: 210,
                            height: 210,
                          ),
                        ),
                        SizedBox(
                          width: 37,
                        ),
                        FlatButton(
                          hoverColor: Colors.pink[200],
                          splashColor: Colors.black,
                          height: 240,
                          minWidth: 240,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(150)),
                          onPressed: () {},
                          onLongPress: () {
                            _launchInstaUrl();
                          },
                          child: Image.asset(
                            'bigIG.png',
                            width: 210,
                            height: 210,
                          ),
                        ),
                        SizedBox(
                          width: 37,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      '*hold button to go to direct link',
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.black45),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              )
            ],
          ),
          FooterWidget()
        ],
      ),
    );
  }

  _launchInstaUrl() async {
    const _urlIg = 'https://www.instagram.com/irwanshope_hwi';
    await canLaunch(_urlIg)
        ? await launch(_urlIg)
        : throw 'could not launch $_urlIg';
  }

  _launchWAUrl() async {
    const _urlWa =
        'https://api.whatsapp.com/send?phone=6281911493731&text=Assalamualaikum%20Weng,%20Saya%20tertarik%20untuk%20membeli%20produk%20HWI%20ini';
    await canLaunch(_urlWa)
        ? await launch(_urlWa)
        : throw 'could not launch $_urlWa';
  }

  _launchFBUrl() async {
    const _urlFb = 'https://www.facebook.com/aweng.aweng.7545708';
    await canLaunch(_urlFb)
        ? await launch(_urlFb)
        : throw 'could not launch $_urlFb';
  }

  _launchCallUrl() async {
    const _urlCall = 'https://www.google.com/awengKecebadai';
    await canLaunch(_urlCall)
        ? await launch(_urlCall)
        : throw 'could not launch $_urlCall';
  }
}
