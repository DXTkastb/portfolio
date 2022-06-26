import 'package:flutter/material.dart';

import '../buttons/BarButtons.dart';
import '../data/projectdata.dart';
import '../projects/projectcard.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Theme(
      data: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 60,
          color: Colors.teal[200],
          fontFamily: 'disp',
          decoration: TextDecoration.none,
        ),
        caption: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.blueGrey.shade700,
          fontSize: 30,
        ),
        bodyText1: const TextStyle(
          fontSize: 16,
        ),
        bodyText2: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w100, fontSize: 14),
        button: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      )),
      child: LayoutBuilder(
        builder: (ctx, cons) {
          var isSmall = (cons.maxWidth < 950);

          return Container(
              color: const Color.fromRGBO(43, 88, 144, 1.0),
              padding: (isSmall)
                  ? const EdgeInsets.only(top: 70, left: 10, right: 10)
                  : const EdgeInsets.only(top: 70, left: 70, right: 70),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    (isSmall)
                        ? const SizedBox(
                            height: 20,
                            width: double.infinity,
                          )
                        : const SizedBox(),
                    const Align(
                      alignment: Alignment.center,
                      child: BarButtons('GO BACK', Colors.white, 'back'),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 35),
                        child: Text(
                          'PROJECTS',
                          style: Theme.of(ctx).textTheme.headline1,
                        ),
                      ),
                    ),
                    ...ProjectData.project_list.map((e) {
                      return ProjectCard(e.name, e.info, e.stack, e.code_url,
                          e.demo_url, e.img);
                    }).toList()
                  ],
                ),
              ));
        },
      ),
    );
  }
}
