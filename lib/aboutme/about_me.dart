import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

import '../buttons/bar_buttons.dart';
import '../buttons/punch_hole.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(top: 70, bottom: 70),
      child: LayoutBuilder(builder: (ctx, cons) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: cons.maxHeight, maxWidth: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BarButtons('GO BACK', Colors.white, 'back'),
                SizedBox(
                    width: 600,
                    child: Padding(
                      padding: const EdgeInsets.only(top:20,bottom: 30,left: 10,right: 10),
                      child: Column(
                        children: const [
                          Text(
                            "HI !",
                            style: TextStyle(
                                fontFamily: 'disp',
                                fontSize: 160,
                                color: Color.fromRGBO(255, 159, 70, 1.0),
                                decoration: TextDecoration.none),
                          ),
                          Text(
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
                        ],
                      ),
                    )),
                PunchHoleButton(false),
              ],
            ),
          ),
        );
      }),
    );
  }
}
