import 'package:flutter/material.dart';
import '../launchlink.dart';

class CollapsibleButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
        ElevatedButton(onPressed: (){
          LaunchLink.launchUrl('https://www.instagram.com/treehigh6/');
        } ,style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ) , child: const Text(' explore >',style: TextStyle(
            fontSize: 12,
            fontFamily: 'disp',
            color: Colors.black,
            decoration: TextDecoration.none
        ),),);
  }
  
}