import 'package:flutter/material.dart';
import '../buttons/punch_hole.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

import '../buttons/BarButtons.dart';

class AboutMe extends StatelessWidget {
  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            children: [              const SizedBox(
              height: 20,
            ),
              const BarButtons('GO BACK', Colors.white, 'back'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HI !",
                    style: TextStyle(
                        fontFamily: 'disp',
                        fontSize: 160,
                        color: Colors.red.shade800,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 70, right: 70, top: 0, bottom: 70),
                alignment: Alignment.topLeft,
                child: const Text(
                  '\n\nI am Kaustubh, based in Kanpur, India. I\'m a Web App Developer, Sketch Artist and a beginner Photographer.\n'
                  '\n''I have completed my bachelor\'s in Information Technology(2017-2021) and currently, I work as an Associate Engineer at TATA Consultancy Services.\n'
                  '\nBuilding solutions that solve problems motivates me a lot. Also, being a team person\, I highly value optimistic attitude and a competitive atmosphere.'
                  ,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              PunchHoleButton(false),              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
