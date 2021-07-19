import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'bgAbout.png',
          width: MediaQuery.of(context).size.width,
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
              Text(
                'D’mahiz Gallery merupakan sebuah tempat yang menyediakan beberapa macam\nproduk kecantikan dari MS GLOW. D’mahiz gallery sangat terpercaya menghadirkan\nproduk yang keasliannya terjamin. ',
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(fontSize: 25),
              ),
              SizedBox(height: 160,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    hoverColor: Colors.pink[200],
                    splashColor: Colors.black,
                    height: 240,
                    minWidth: 240,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150)),
                    onPressed: () {}, 
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
              )
            ],
          ),
        )
      ],
    );
  }
}
