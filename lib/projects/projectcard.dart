import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

class ProjectCard extends StatelessWidget {
  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  final String projectname;
  final String info;
  final String img;
  final List<String> stack;
  final String codeurl;
  final String demourl;

  const ProjectCard(
    this.projectname,
    this.info,
    this.stack,
    this.codeurl,
    this.demourl,
    this.img,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400,
      alignment: Alignment.center,
      child: Card(
        shadowColor: const Color.fromRGBO(2, 30, 50, 1.0),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: const Color.fromRGBO(200, 231, 255, 1.0),
        child: Column(
          children: [
            // const ClipRRect(
            //   borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(20),
            //       topRight: Radius.circular(20)),
            //   child:  SizedBox()
            // ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(projectname,
                          style: Theme.of(context).textTheme.caption)),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20, right: 30),
                      child: Text(
                        info,
                        style: Theme.of(context).textTheme.bodyText1,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Wrap(
                      children: [
                        ...stack.map((e) {
                          return StackClip(e);
                        }).toList()
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(codeurl);
                          },
                          child: const BottomText('CODE'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            launchUrl(demourl);
                          },
                          child: const BottomText('DEMO'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  final String input;

  const BottomText(this.input);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: Colors.black, width: 2),
          color: Colors.white,
        ),
        child: Text(
          input,
          style: Theme.of(context).textTheme.button,
        ));
  }
}

class StackClip extends StatelessWidget {
  final String input;

  const StackClip(this.input);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(left: 7, right: 7, top: 5, bottom: 5),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Text(
        input,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
