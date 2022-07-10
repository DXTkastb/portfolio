import 'package:flutter/material.dart';
import '../buttons/punch_hole.dart';
import '../buttons/bar_buttons.dart';
import '../homescreen/linkmenu.dart';


class TabLinks extends StatelessWidget {
  final bool isMobile;

  const TabLinks(this.isMobile,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       PunchHoleButton(isMobile),
        // Expanded(child: Container(),flex: ,),

        (isMobile)
            ? const Material(
              color: Colors.transparent,
              child: LinkMenu(),
            )
            : SizedBox(

              width: 600,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BarButtons(
                      'PROJECTS', Colors.teal.shade200, '/projects'),
                  BarButtons(
                      'STACK', Colors.teal.shade200, '/stack'),
                  BarButtons(
                      'SKILLS', Colors.teal.shade200, '/skills'),
                  BarButtons(
                      'ABOUT ME', Colors.teal.shade200, '/aboutme'),
                  BarButtons(
                      'CONTACT', Colors.teal.shade200, '/contact'),

                ],
              ),
            ),
      ],
    );
  }
}
