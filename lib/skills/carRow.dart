import 'package:flutter/material.dart';
import 'package:portfolio/buttons/BarButtons.dart';
import 'package:portfolio/skills/skillbox.dart';

class SkillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      margin: const EdgeInsets.only(top: 70,left: 30,right: 30),

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Wrap(
            spacing: 30,
            alignment: WrapAlignment.center,
            children:  [
              BarButtons(
                  'GO BACK', Colors.deepPurpleAccent.shade100, 'back'),

              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:50,top: 30),
                  child: Text(
                    'STACK',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.deepPurple.shade700,
                      fontFamily: 'disp',
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              const Skillbox("FRAMEWORK :", 2) ,
              const Skillbox("LANGUAGES :", 1),     const Skillbox("DATABASES :", 3),
            ],

          ),
        ),
      ),
    );
  }
}

