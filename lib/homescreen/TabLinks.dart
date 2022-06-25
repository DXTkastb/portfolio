import 'package:flutter/material.dart';
import '../buttons/punch_hole.dart';
import '../buttons/BarButtons.dart';
import '../homescreen/linkmenu.dart';


class TabLinks extends StatelessWidget {
  final bool isMobile;

  const TabLinks(this.isMobile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       PunchHoleButton(isMobile),
        // Expanded(child: Container(),flex: ,),

        (isMobile)
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
                      'PROJECTS', Colors.teal.shade200, 'project'),
                  BarButtons(
                      'STACK', Colors.teal.shade200, 'stack'),
                  BarButtons(
                      'SKILLS', Colors.teal.shade200, 'skill'),
                  BarButtons(
                      'ABOUTME', Colors.teal.shade200, 'about me'),
                  BarButtons(
                      'CONTACT', Colors.teal.shade200, 'contact'),

                ],
              ),
            ),
      ],
    );
  }
}
