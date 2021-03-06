import 'package:flutter/material.dart';
import '../ColorDark.dart';

class ResumeButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color bgcolor;
  final bool open;
  final Function()? onpressed;

  const ResumeButton(
      this.text, this.open, this.textcolor, this.bgcolor, this.onpressed,{Key? key}) : super(key: key);

  Widget getico(bool b) {
    if (b) {
      return const Icon(
        Icons.open_in_new,
        color: Colors.black,
        size: 19.0,
        semanticLabel: 'Resume',
      );
    } else {
      return const Text("");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: onpressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.hovered)) {
                return bgcolor;
                // return const Color.fromRGBO(250, 255, 120, 1.0);
              }
              return GetLightColor.getLight(bgcolor);
              // return const Color.fromRGBO(250, 255, 175, 1.0);
            }),
            padding: MaterialStateProperty.all(const EdgeInsets.only(
                left: 21, top: 31, right: 21, bottom: 31)),
            shape: MaterialStateProperty.all(
                 RoundedRectangleBorder(side: const BorderSide(width: 2),borderRadius: BorderRadius.circular(5)))),
        child: SizedBox(
          width: 110,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              text,
              style: TextStyle(fontFamily: 'Roboto',
                  fontSize: 16, fontWeight: FontWeight.bold, color: textcolor,),
            ),
            getico(open)
          ]),
        ));
  }
}
