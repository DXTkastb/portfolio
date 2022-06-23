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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            flex: 1,
            child: Container(


              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  color: (ismob)?Colors.transparent:Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                margin: const EdgeInsets.only(
                    left: 40),

                width: 115,
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
                              height: 45,
                              width: 45,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
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
                              height: 45,
                              width: 45,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        // Expanded(child: Container(),flex: ,),
        (ismob)
            ?  Container(


          margin: const EdgeInsets.only(
          right: 30, ),

              child: Material(
                      color: Colors.transparent,
                    child: LinkMenu(),
                  ),
            )

            : Expanded(
                flex: 3,
                child: Container(

                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 870,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: BarButtons(
                              'PROJECTS', Colors.teal.shade300, 'project'),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: BarButtons(
                                'STACK', Colors.teal.shade300, 'stack')),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: BarButtons(
                              'SKILLS', Colors.teal.shade300, 'skill'),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: BarButtons(
                                'ABOUTME', Colors.teal.shade300, 'about me')),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: BarButtons(
                                'CONTACT', Colors.teal.shade300, 'contact')),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                )),
      ],
    );
  }
}
