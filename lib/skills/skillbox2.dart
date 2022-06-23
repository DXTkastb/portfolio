import 'package:flutter/material.dart';
import 'package:portfolio/data/skilldata.dart';

class SkillBox2 extends StatelessWidget {
  final MapEntry<String, String> e;

  const SkillBox2(this.e);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(100),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.deepPurple[SkillData.proficient[e.key]!]!,
                      width: 15),
                  borderRadius: BorderRadius.circular(100)),
              child: Image(
                image: AssetImage(e.value),
                height: 55,
                width: 55,
              ),
            ),
          ),
          Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 22),
                // color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              e.key,
              style: const TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 22,
                fontFamily: 'disp',
                fontWeight: FontWeight.w100
              ),
            ),
          )),
        ],
      ),
    );
  }
}
