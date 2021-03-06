import 'package:flutter/material.dart';
import '../buttons/collapsebutton.dart';
import '../buttons/bar_buttons.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.black,
        padding: const EdgeInsets.only( left: 10, right: 10, bottom: 10),
        child: LayoutBuilder(builder: (ctx, cons) {
          var width = cons.maxWidth;
          var height = cons.maxHeight - 90;
          return SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: SizedBox(height: 70,),
                ),
                const Center(
                  child: BarButtons(
                      'GO BACK', Color.fromRGBO(
                      158, 221, 255, 1.0), null),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70)),
                      image: DecorationImage(
                          image: AssetImage('images/skillimg/pic2.jpg'),
                          fit: BoxFit.cover,
                          opacity: 0.84),
                    ),
                    constraints: BoxConstraints(
                        minWidth: 490,
                        maxHeight: (height > 650) ? 730: 590),
                    width: width / 3 - 50,
                    child: Container(
                      decoration: const BoxDecoration(

                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Color.fromRGBO(0, 0, 0, 1)
                            ]),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(40),
                      child: const LowerWid('PHOTOGRAPHY','https://www.instagram.com/treehigh6/',' explore >'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70)),
                      image: DecorationImage(
                          image: AssetImage('images/skillimg/sk1.jpeg'),
                          fit: BoxFit.cover,
                          opacity: 0.84),
                    ),
                    constraints: BoxConstraints(
                        minWidth: 490,
                        maxHeight: (height > 650) ? 730: 590),
                    width: width / 3 - 50,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Color.fromRGBO(0, 0, 0, 1)
                            ]),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(40),
                      child: const LowerWid('SKETCHING','',' coming soon '),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Container(
                    decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70)),
                      image: DecorationImage(
                          image: AssetImage('images/skillimg/sk2.jpeg'),
                          fit: BoxFit.cover,
                          opacity: 0.84),
                    ),
                    constraints: BoxConstraints(
                        minWidth: 490,
                        maxHeight: (height > 650) ? 730: 590),
                    width: width / 3 - 50,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Color.fromRGBO(0, 0, 0, 1)
                            ]),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.all(40),
                      child: const LowerWid('MUSIC',' ','coming soon'),
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}

class LowerWid extends StatelessWidget{
  final String text;  final String buttonText;final String link;
  const LowerWid(this.text,this.link,this.buttonText,{Key? key}) : super(key: key);


  TextStyle getTextStyle(bool isButton){
    if(isButton) {
      return const TextStyle(
      fontSize: 12,
      fontFamily: 'disp',
      color: Colors.white,
      decoration: TextDecoration.none
    );
    }
    return const TextStyle(
        fontSize: 25,      fontFamily: 'disp',
        color: Colors.white,
        decoration: TextDecoration.none
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(text,style: const TextStyle(
          fontSize: 25,      fontFamily: 'disp',
          color: Colors.white,
          decoration: TextDecoration.none
      ),),
       CollapsibleButton(buttonText,link),
      ],
    );
  }

}
