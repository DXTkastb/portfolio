import 'package:flutter/material.dart';
import 'package:portfolio/buttons/BarButtons.dart';
import 'package:portfolio/homescreen/linkmenu.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

class TabLinks extends StatelessWidget {
  final bool ismob;

  const TabLinks(this.ismob);

  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 52,
          decoration: BoxDecoration(
            color: (ismob) ? Colors.transparent : Colors.white,
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
        ),
        // Expanded(child: Container(),flex: ,),

        (ismob)
            ? Material(
              color: Colors.transparent,
              child: LinkMenu(),
            )
            : SizedBox(

              width: 600,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BarButtons(
                      'PROJECTS', Colors.teal.shade300, 'project'),
                  BarButtons(
                      'STACK', Colors.teal.shade300, 'stack'),
                  BarButtons(
                      'SKILLS', Colors.teal.shade300, 'skill'),
                  BarButtons(
                      'ABOUTME', Colors.teal.shade300, 'about me'),
                  BarButtons(
                      'CONTACT', Colors.teal.shade300, 'contact'),

                ],
              ),
            ),
      ],
    );
  }
}
