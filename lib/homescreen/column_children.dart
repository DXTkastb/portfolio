import 'package:flutter/material.dart';
import './midtext.dart';
import '../buttons/resumebutton.dart';
import '../homescreen/tab_links.dart';
import '../launchlink.dart';

class ColumnChildren extends StatelessWidget {
  final BoxConstraints constraints;
  final bool ismobile;

  const ColumnChildren(this.constraints, this.ismobile, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textWidth = constraints.maxWidth;
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
          padding: const EdgeInsets.only(top: 40, bottom: 40),
          child: Column(children: [
            Text(
              'Hi !, I am a ',
              textAlign: TextAlign.right,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                fontSize: (ismobile) ? 30 : (textWidth * 0.038),
                color: Colors.white,
                // const Color.fromRGBO(34, 87, 126, 1.0),
                fontFamily: 'disp',
              ),
            ),
            SizedBox(
              height: (ismobile) ? 5 : 0,
            ),
            MidText(textWidth, ismobile),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: ResumeButton("RESUME", true, Colors.black,
              const Color.fromRGBO(250, 255, 152, 1.0), () {
                LaunchLink.launchUrl("https://drive.google.com/file/d/17E4-fXdA17uHV7Lj9IagWabFlhW-8oE7/view?usp=sharing");
          }),
        ),
      ],
    );
  }
}
