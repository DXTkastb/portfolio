import 'package:flutter/material.dart';
import 'package:portfolio/data/projectdata.dart';
import 'package:portfolio/projects/projectcard.dart';

import '../buttons/BarButtons.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
color: const Color.fromRGBO(43, 88, 144, 1.0),
      padding:const  EdgeInsets.all(70),

      child:SingleChildScrollView(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children:  [

              const Align(
                alignment: Alignment.center,

                child: BarButtons(
                    'GO BACK', Colors.white, 'back'),
              ),
                Center(

                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20,top: 35),
                  child: Text(
                    'PROJECTS',
                    style: TextStyle(
                      fontSize:50,
                      color: Colors.teal.shade200,
                      fontFamily: 'disp',
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),

...ProjectData.project_list.map((e) {
  return
  ProjectCard(e.name,e.info,e.stack,e.code_url,e.demo_url,e.img

  );


}).toList()

            ],
          ),
        ));

  }
}
