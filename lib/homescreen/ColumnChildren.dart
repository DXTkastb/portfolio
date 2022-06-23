import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/buttons/resumebutton.dart';
import 'package:portfolio/homescreen/TabLinks.dart';

class ColumnChildren extends StatelessWidget {
  double width;
  final bool ismob;

  void Function()? nothing(){

  }
  ColumnChildren(this.width,this.ismob);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Container(

            alignment: Alignment.centerRight,
            height: double.infinity,
            width: double.infinity,
            child:  TabLinks(ismob),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 4,
          child: Container(
              alignment: Alignment.center,
              child: RichText(

                  text: TextSpan(
                children: [
                  TextSpan(

                    text: 'Hi !, I am ',
                    style: TextStyle(

                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: (ismob)?30:(width * 0.038),
                        color:Colors.white,
                        // const Color.fromRGBO(34, 87, 126, 1.0),
                        fontFamily: 'disp',),


                  ),
                  (ismob)?const TextSpan(text: '\n'):const TextSpan(text: ''),

                  TextSpan(
                    text: 'Web Developer!',
                    style: TextStyle(
    fontFamily: 'disp',
                        decoration: TextDecoration.underline,

                        fontWeight: FontWeight.bold,
                        fontSize: (ismob)?50:(width * 0.060),


                        ),
                  ),
                ],
              )


              ,
                textAlign: TextAlign.center,
              )
              ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Container(

            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              child:  ResumeButton("RESUME",true,Colors.black,const Color.fromRGBO(
                  250, 255, 152, 1.0),nothing),
            ),
          ),
        ),
      ],
    );
  }
}
