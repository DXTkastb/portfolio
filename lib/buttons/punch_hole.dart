import 'package:flutter/material.dart';
import '../launchlink.dart';

class PunchHoleButton extends StatelessWidget{
  final bool isMobile;
  PunchHoleButton(this.isMobile);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
width: 100,
height: 50,
      decoration: BoxDecoration(
        color: (isMobile) ? Colors.transparent : Colors.white,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Tooltip(
            message: 'Github',
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  LaunchLink.launchUrl('https://github.com/DXTkastb');
                },
                child:const Image(
                  image: AssetImage('images/github.png'),

                ),
              ),
            ),
          ),

          Tooltip(
            message: 'Linkedin',
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  LaunchLink.launchUrl(
                      'https://www.linkedin.com/in/kaustubhdxt/');
                },
                child: const Image(
                  image: AssetImage('images/link.png'),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}