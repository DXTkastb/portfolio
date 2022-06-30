import 'package:flutter/material.dart';

import '../displaysize.dart';
import '../skills/skillbox2.dart';

class Skillbox extends StatelessWidget {
  final String headline;
  final Map<String, String> data;

  const Skillbox(this.headline, this.data);

  @override
  Widget build(BuildContext context) {
    var wid = DisplaySize.width_screen;
    // TODO: implement build
    return Container(
      constraints: const BoxConstraints(maxWidth: 350),
      alignment: Alignment.center,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 30),
            child: Text(
              headline,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          ...data.entries.map((e) => SkillBox2(e)),
        ],
      ),
    );
  }
}
