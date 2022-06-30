import 'dart:async';

import 'package:flutter/material.dart';

class MidText extends StatefulWidget {
  final double box;
  final bool isMobile;
  const MidText(this.box,this.isMobile,{Key? key}) : super(key: key);
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

  List<String> str = ['Web Developer','Mobile App Developer','Sketch Artist','Photographer'];

  @override
  void didChangeDependencies() {
    Timer.periodic(const Duration(milliseconds: 3500), (_) {
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
    var x=animation.value;
    // TODO: implement build
    return Text(
      str[index],
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black.withOpacity(1-x/500),
        fontFamily: 'disp',
        decoration: TextDecoration.none,
        // decoration: TextDecoration.underline,
        // decorationColor: Colors.black,
        // decorationThickness: 0.8-x/600,
        fontWeight: FontWeight.bold,
        fontSize:
        (widget.isMobile) ? 50 : (widget.box * 0.060),
      ),
    );
  }
}
