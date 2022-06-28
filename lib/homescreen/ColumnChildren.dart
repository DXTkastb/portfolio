import 'package:flutter/material.dart';
import './midtext.dart';
import '../buttons/resumebutton.dart';
import '../homescreen/TabLinks.dart';

class ColumnChildren extends StatelessWidget {
  BoxConstraints constraints;
  final bool ismobile;

  void Function()? nothing() {}

  ColumnChildren(this.constraints, this.ismobile);

  @override
  Widget build(BuildContext context) {
    var textwidth=constraints.maxWidth;
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
          padding: const EdgeInsets.only(top:40,bottom: 40),
          child: Column(children: [
            Text(
              'Hi !, I am a ',
              textAlign: TextAlign.right,style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              fontSize:
              (ismobile) ? 30 : (textwidth* 0.038),
              color: Colors.white,
              // const Color.fromRGBO(34, 87, 126, 1.0),
              fontFamily: 'disp',
            ),
            ),
 SizedBox(height: (ismobile)?5:0,),

            MidText(textwidth,ismobile),
          ]),
        ),

        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: ResumeButton("RESUME", true, Colors.black,
              const Color.fromRGBO(250, 255, 152, 1.0), nothing),
        ),
      ],
    );
  }
}

// class Midtext2 extends StatelessWidget {
//   BoxConstraints box;
//
//   Midtext2(this.box);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 300,
//         alignment: Alignment.center,
//         child: RichText(
//           text: TextSpan(
//             children: [
//               TextSpan(
//                 text: 'Hi !, I am a ',
//                 style: TextStyle(
//                   decoration: TextDecoration.none,
//                   fontWeight: FontWeight.bold,
//                   fontSize:
//                   (false) ? 30 : (box.maxWidth * 0.038),
//                   color: Colors.white,
//                   // const Color.fromRGBO(34, 87, 126, 1.0),
//                   fontFamily: 'disp',
//                 ),
//               ),
//               (false)
//                   ? const TextSpan(text: '\n')
//                   : const TextSpan(text: ''),
//               TextSpan(
//                 text: 'Web Developer!',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontFamily: 'disp',
//                   decoration: TextDecoration.underline,
//                   fontWeight: FontWeight.bold,
//                   fontSize:
//                   (false) ? 50 : (box.maxWidth * 0.060),
//                 ),
//               ),
//             ],
//           ),
//           textAlign: TextAlign.center,
//         ));
//   }
// }
