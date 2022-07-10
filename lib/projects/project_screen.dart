import 'package:flutter/material.dart';

import '../buttons/bar_buttons.dart';
import '../data/projectdata.dart';
import '../projects/projectcard.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, cons) {
        var isSmall = (cons.maxWidth < 950);

        return Container(
          color: Colors.white,
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),

            child: SingleChildScrollView(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: SizedBox(height: 70,),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: BarButtons(
                        'GO BACK', Color.fromRGBO(221, 239, 255, 1.0), null),
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
                    if(e.name.compareTo('Portfolio')==0) {
                      return ProjectCard(false, e);
                    }
                    return ProjectCard(true, e);
                  }).toList()
                ],
              ),
            ));
      },
    );
  }
}
