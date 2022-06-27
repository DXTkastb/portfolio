import 'dart:async';

import 'package:flutter/material.dart';

class MidText extends StatefulWidget {
  final BoxConstraints box;
  MidText(this.box);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MidTextState();
  }
}

class MidTextState extends State<MidText> with SingleTickerProviderStateMixin {
  var s = 'abc';
  int index = 0;
  late AnimationController ac;
  late Animation<double> animation;
  late bool goingahead;

  @override
  void initState() {
    goingahead = false;

    ac = AnimationController(
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 400),
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 500.0)
        .animate(CurvedAnimation(parent: ac, curve: Curves.linear));
    animation.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  List<String> str = ['Web Developer!','Mobile App Developer','Sketch Artist','Photographer'];

  @override
  void didChangeDependencies() {
    Timer.periodic(const Duration(milliseconds: 3000), (_) {
      fireAnimation();
    });

    super.didChangeDependencies();
  }

  void fireAnimation() async {
    await ac.forward();
    index++;
    if (index > 3) index = 0;
    await ac.reverse();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
           Text(
             'Hi !, I am a ',
            textAlign: TextAlign.right,style: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold,
            fontSize:
            (false) ? 30 : (widget.box.maxWidth * 0.038),
            color: Colors.white,
            // const Color.fromRGBO(34, 87, 126, 1.0),
            fontFamily: 'disp',
          ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              color: Colors.blue,
              alignment: Alignment(-1, animation.value / 5000.0),
              child: Text(
                str[index],
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'disp',
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                  fontSize:
                  (false) ? 50 : (widget.box.maxWidth * 0.060),
                ),
              )),
        ]),
      ),
    );
  }
}
