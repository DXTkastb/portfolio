
import 'package:flutter/material.dart';
import 'package:portfolio/data/skilldata.dart';
import 'package:portfolio/displaysize.dart';
import 'package:portfolio/skills/skillbox2.dart';

class Skillbox extends StatelessWidget {


  final String headline;
  final int i;




  const Skillbox(  this.headline,this.i);

  Map<String,String> provideData(){
    Map<String,String> data;
    if(i==1)
      data=SkillData.laungua_data;
    else if(i==2)
      data=SkillData.framework_data;
    else
      data=SkillData.db;

    return data;
  }


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
// width: 300,
    width: (DisplaySize.width_screen/3)-250,




alignment: Alignment.center,



      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20,bottom: 30),
            child: Text(
              headline,
              textAlign: TextAlign.left,

              style:  const TextStyle(
                  fontFamily: 'disp',


                  fontWeight: FontWeight.bold,
                  fontSize: 25,

                  color:Colors.black,
                  decoration: TextDecoration.none
              ),
            ),
          ),






         ...provideData().entries.map((e) => SkillBox2(e)),
        ],

      )
      ,
    );
  }
}
