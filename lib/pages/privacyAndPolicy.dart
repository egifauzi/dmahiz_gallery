import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyandPolicy extends StatelessWidget {
  const PrivacyandPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.fromLTRB(120, 86, 105, 86),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ttl1,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf1,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl1,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf1,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl2,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf2,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl3,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf3,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl4,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf4,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl5,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf5,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl6,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf6,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl7,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf7,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
            Text(
              ttl8,
              style: GoogleFonts.raleway(
                  fontSize: 48,
                  textStyle: TextStyle(decoration: TextDecoration.none),
                  color: Color(0xffC8A7A7)),
              textAlign: TextAlign.left,
            ),
            SelectableText(prgrf8,
                enableInteractiveSelection: true,
                toolbarOptions: ToolbarOptions(selectAll: true),
                style: GoogleFonts.raleway(
                    fontSize: 24,
                    color: Colors.black,
                    textStyle: TextStyle(decoration: TextDecoration.none)),
                textAlign: TextAlign.left),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}

final String ttl1 = 'Privacy Policy for Dmahiz';

final String prgrf1 =
    '''At Dmahiz, accessible from https://dmahiz-gallery.netlify.app, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Dmahiz and how we use it.

If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.
''';

final String ttl2 = '1.Log Files';

final String prgrf2 =
    '''Dmahiz follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users' movement on the website, and gathering demographic information. Our Privacy Policy was created with the help of the Privacy Policy Generator.
''';

final String ttl3 = '2.Our Advertising Partners';

final String prgrf3 =
    '''Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.

Google

https://policies.google.com/technologies/ads

''';

final String ttl4 = '3.Privacy Policies';

final String prgrf4 =
    '''You may consult this list to find the Privacy Policy for each of the advertising partners of Dmahiz.

Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Dmahiz, which are sent directly to users' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.

Note that Dmahiz has no access to or control over these cookies that are used by third-party advertisers.
''';

final String ttl5 = '4.Third Party Privacy Policies';

final String prgrf5 =
    '''Dmahiz's Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.

You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers' respective websites. What Are Cookies?
''';

final String ttl6 = "5.Children's Information";

final String prgrf6 =
    '''Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.

Dmahiz does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.
''';

final String ttl7 = '6.Online Privacy Policy Only';

final String prgrf7 =
    '''This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Dmahiz. This policy is not applicable to any information collected offline or via channels other than this website.''';

final String ttl8 = '7.Consent';

final String prgrf8 =
    '''By using our website, you hereby consent to our Privacy Policy and agree to its Terms and Conditions.''';
