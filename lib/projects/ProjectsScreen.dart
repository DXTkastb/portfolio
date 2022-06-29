import 'package:flutter/material.dart';

import '../buttons/BarButtons.dart';
import '../data/projectdata.dart';
import '../projects/projectcard.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (ctx, cons) {
        var isSmall = (cons.maxWidth < 950);

        return Container(
          color: Colors.white,
            padding: const EdgeInsets.only(top:70,left: 15,right: 15,bottom: 10),

            child: SingleChildScrollView(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [

                  const Align(
                    alignment: Alignment.center,
                    child: BarButtons(
                        'GO BACK', Color.fromRGBO(221, 239, 255, 1.0), 'back'),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 35),
                      child: Text(
                        'PROJECTS',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.black,
                          fontFamily: 'disp',
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                  ...ProjectData.project_list.map((e) {
                    return ProjectCard(true, e);
                  }).toList()
                ],
              ),
            ));
      },
    );
  }
}
