import 'package:flutter/material.dart';

class SiteMap extends StatelessWidget {
  const SiteMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(52, 153, 52, 153),
      child: Image.asset(
        'siteMap.png',
        width: 1336,
        height: 249,
      ),
    );
  }
}
