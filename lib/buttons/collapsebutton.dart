import 'package:flutter/material.dart';
import '../launchlink.dart';

class CollapsibleButton extends StatelessWidget{
  final String text;final String link;
  const CollapsibleButton(this.text,this.link,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
        ElevatedButton(onPressed: (){
          LaunchLink.launchUrl(link);
        } ,style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ) , child: Text(text,style: const TextStyle(
            fontSize: 12,
            fontFamily: 'disp',
            color: Colors.black,
            decoration: TextDecoration.none
        ),),);
  }
  
}