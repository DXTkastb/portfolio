import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

import '../buttons/BarButtons.dart';
import '../buttons/punch_hole.dart';

class AboutMe extends StatelessWidget {
  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (ctx, cons) {
      return Container(
        padding:
            const EdgeInsets.only(top: 70, left: 40, right: 40, bottom: 10),
        color: Colors.black,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: 600, minHeight: cons.maxHeight - 80),
            child: Column(
              children: [
                const BarButtons('GO BACK', Colors.white, 'back'),
                SizedBox(
                  height: cons.maxHeight / 10,
                ),
                const Text(
                  "HI !",
                  style: TextStyle(
                      fontFamily: 'disp',
                      fontSize: 160,
                      color: Color.fromRGBO(255, 151, 50, 1.0),
                      decoration: TextDecoration.none),
                ),
                const Text(
                  '\nI am Kaustubh, based in Kanpur, India. I\'m a Web App Developer, Sketch Artist and a beginner Photographer.\n'
                  '\n'
                  'I have completed my bachelor\'s in Information Technology(2017-2021) and currently, I work as an Associate Engineer at TATA Consultancy Services.\n'
                  '\nBuilding solutions that solve problems motivates me a lot. Also, being a team person\, I highly value optimistic attitude and a competitive atmosphere.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: cons.maxHeight / 10,
                ),
                PunchHoleButton(false),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
