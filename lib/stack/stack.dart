import 'package:flutter/material.dart';

import '../buttons/bar_buttons.dart';
import '../data/skilldata.dart';
import '../stack/skillbox.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 60,
            color: Colors.black,
            fontFamily: 'disp',
            decoration: TextDecoration.none,
          ),
          headline2: TextStyle(
              fontFamily: 'disp',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
              decoration: TextDecoration.none),
          bodyText1: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 22,
              fontFamily: 'disp',
              fontWeight: FontWeight.w100),
        ),
      ),
      child: Container(
        color: Colors.white,
        padding:
            const EdgeInsets.only(top: 70, left: 15, right: 15, bottom: 10),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Wrap(
            spacing: 30,
            alignment: WrapAlignment.center,
            children: [
              const BarButtons(
                  'GO BACK', Color.fromRGBO(201, 172, 255, 1), null),
              const SizedBox(
                height: 40,
                width: double.infinity,
              ),
              Builder(
                builder: (ctx) => Text(
                  'STACK',
                  style: Theme.of(ctx).textTheme.headline1,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 46, bottom: 10),
                height: 11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Level('Proficient', Colors.deepPurple.shade600),
                    const SizedBox(
                      width: 7,
                    ),
                    Level('Competent', Colors.deepPurple.shade300),
                    const SizedBox(
                      width: 7,
                    ),
                    Level('Beginner', Colors.deepPurple.shade100),
                  ],
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

class Level extends StatelessWidget {
   final String lvl;
   final Color color;

   const Level(this.lvl, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Tooltip(
      preferBelow: false,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(10),
      textStyle: const TextStyle(fontSize: 12, color: Colors.white),
      message: lvl,
      child: Container(
        width: 18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: color),
      ),
    );
  }
}
