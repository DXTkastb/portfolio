import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

class PunchHoleButton extends StatelessWidget{
  final bool isMobile;
  PunchHoleButton(this.isMobile);

  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      width: 107,
      height: 52,
      decoration: BoxDecoration(
        color: (isMobile) ? Colors.transparent : Colors.white,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        children: [
          Tooltip(
            message: 'Github',
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchUrl('https://github.com/DXTkastb');
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  child: Image(
                    image: AssetImage('images/github.png'),

                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 3,
          ),
          Tooltip(
            message: 'Linkedin',
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  launchUrl(
                      'https://www.linkedin.com/in/kaustubhdxt/');
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  child: Image(
                    image: AssetImage('images/link.png'),

                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}