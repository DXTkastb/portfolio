import 'package:flutter/material.dart';
import '../data/skilldata.dart';

class SkillBox2 extends StatelessWidget {
  final MapEntry<String, String> e;

  const SkillBox2(this.e);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
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
            flex: 3,
              child: Container(
            alignment: Alignment.center,

            child: Text(
              e.key,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          )),
          const Expanded(flex: 1,
              child:SizedBox()),
        ],
      ),
    );
  }
}
