import 'package:flutter/material.dart';

import '../buttons/BarButtons.dart';
import '../data/skilldata.dart';
import '../skills/skillbox.dart';

class SkillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 60,
            color: Colors.deepPurple.shade700,
            fontFamily: 'disp',
            decoration: TextDecoration.none,
          ),
          headline2: const TextStyle(
              fontFamily: 'disp',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
              decoration: TextDecoration.none),
          bodyText1: const TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 22,
              fontFamily: 'disp',
              fontWeight: FontWeight.w100),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Wrap(
            spacing: 30,
            alignment: WrapAlignment.center,
            children: [
              BarButtons('GO BACK', Colors.deepPurpleAccent.shade100, 'back'),
              Builder(
                builder: (ctx) => Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(bottom: 50, top: 30),
                  child: Text(
                    'STACK',
                    style: Theme.of(ctx).textTheme.headline1,
                  ),
                ),
              ),
              const Skillbox("FRAMEWORK :", SkillData.framework_data),
              const Skillbox("LANGUAGES :", SkillData.laungua_data),
              const Skillbox("DATABASES :", SkillData.db),
            ],
          ),
        ),
      ),
    );
  }
}
