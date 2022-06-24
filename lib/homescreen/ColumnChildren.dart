import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/buttons/resumebutton.dart';
import 'package:portfolio/homescreen/TabLinks.dart';

class ColumnChildren extends StatelessWidget {
  BoxConstraints constraints;
  final bool ismobile;

  void Function()? nothing() {}

  ColumnChildren(this.constraints, this.ismobile);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(top: 30, bottom: 0, left: 40, right: 40),
          child: TabLinks(ismobile),
        ),
        Container(
            height: 300,
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hi !, I am a ',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      fontSize:
                          (ismobile) ? 30 : (constraints.maxWidth * 0.038),
                      color: Colors.white,
                      // const Color.fromRGBO(34, 87, 126, 1.0),
                      fontFamily: 'disp',
                    ),
                  ),
                  (ismobile)
                      ? const TextSpan(text: '\n')
                      : const TextSpan(text: ''),
                  TextSpan(
                    text: 'Web Developer!',
                    style: TextStyle(
                      fontFamily: 'disp',
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize:
                          (ismobile) ? 50 : (constraints.maxWidth * 0.060),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: ResumeButton("RESUME", true, Colors.black,
              const Color.fromRGBO(250, 255, 152, 1.0), nothing),
        ),
      ],
    );
  }
}
