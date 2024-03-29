import 'package:flutter/material.dart';
import '../data/projectdata.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

import '../launchlink.dart';

class ProjectCard extends StatelessWidget {
  final Project projectData;
  final bool navp;

  const ProjectCard(this.navp, this.projectData,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shadowColor: const Color.fromRGBO(2, 30, 50, 1.0),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: const Color.fromRGBO(200, 231, 255, 1.0),
      child: Padding(
          padding: const EdgeInsets.all(30),
          child: HeroTransitionWidget(projectData, navp)),
    );
  }
}

class HeroTransitionWidget extends StatelessWidget {
  final bool navp;
  final Project project;

  const HeroTransitionWidget(
    this.project,
    this.navp,{Key? key}) : super(key: key
  );

  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(
      tag: project.name,
      child: Container(
        width: 340,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(project.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,fontFamily: 'Roboto',
                      decoration: TextDecoration.none,
                      color: Colors.blueGrey.shade700,
                      fontSize: 33,
                    ))),
            Padding(
                padding: const EdgeInsets.only(bottom: 20,),
                child: Text(
                  project.info,
                  style: const TextStyle(
                      color: Colors.black,fontFamily: 'Roboto',
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Wrap(
                children: [
                  ...project.stack.map((e) {
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
                       LaunchLink.launchUrl(project.code_url);
                    },
                    child: const BottomText('CODE'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                (navp)
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('/projectpage', arguments: project);
                          },
                          child: const BottomText('DEMO'),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  final String input;

  const BottomText(this.input,{Key? key}) : super(key: key);

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
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,fontFamily: 'Roboto',
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
        ));
  }
}

class StackClip extends StatelessWidget {
  final String input;

  const StackClip(this.input,{Key? key}) : super(key: key);

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
        style: const TextStyle(
          color: Colors.white,fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 14.4,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
