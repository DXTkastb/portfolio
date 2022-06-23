import 'package:flutter/material.dart';
import 'package:portfolio/buttons/resumebutton.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;
import '../buttons/BarButtons.dart';


class AboutMe extends StatelessWidget {
  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
color: Colors.black,


      alignment: Alignment.center,
      // color: Colors.amberAccent.shade200,
      child: SingleChildScrollView(



          child: Container(
            // color: Colors.blue,
            constraints: const BoxConstraints(maxWidth: 600),
            // decoration:  BoxDecoration(
            //   color: Colors.black,
            //   boxShadow:  [BoxShadow(color: Colors.blueGrey.shade900,spreadRadius: 0.5,blurRadius: 15,offset: Offset(0,7))],
            //   borderRadius: BorderRadius.circular(0),
            //
            //
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40,bottom: 40),
                  child: BarButtons('GO BACK', Colors.white, 'back'),
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [              Text(
                   "HI !",
                   style: TextStyle(
                       fontFamily: 'disp',
                       fontSize: 160,
                       color: Colors.red.shade800,
                       decoration: TextDecoration.none),
                 ),],
               ),
               Container(


                    padding: const EdgeInsets.only(
                        left: 70, right: 70, top:0, bottom: 70),
                    alignment: Alignment.topLeft,
                    child: const Text(

                      '\n\nI am Kaustubh, based in Kanpur, India. I\'m a Web App Developer, Sketch Artist and a beginner Photographer.\n'
                      '\n'
                      'Building solutions that solve problems motivates me a lot. Also, being a team person\, I highly value optimistic attitude and a competitive atmosphere.\n'
                      '\nI have completed my bachelor\'s in Information Technology(2017-2021) and currently, I work as an Associate Engineer at TATA Consultancy Services.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w100,

                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                Container(
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50)),
              width: 115,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Tooltip(
                        message: 'Github',
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              launchUrl('https://github.com/DXTkastb');
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 5, right: 5, top: 5, bottom: 5),
                              child: Image(
                                image: AssetImage('images/github.png'),
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Tooltip(
                        message: 'Linkedin',
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              launchUrl(
                                  'https://www.linkedin.com/in/kaustubhdxt/');
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 5, right: 5, top: 5, bottom: 5),
                              child: Image(
                                image: AssetImage('images/link.png'),
                                height: 45,
                                width: 45,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //    Padding(padding:const EdgeInsets.only(bottom: 10),child: ResumeButton('LinkedIn', false, Colors.black,Colors.blueGrey.shade600,  null)),
                  //     const SizedBox(width: 12,),
                  //     const Padding(padding:EdgeInsets.only(bottom: 10),child:      ResumeButton('Github', false, Colors.white,Colors.red,  null),),
                  //
                  //
                  //
                  //   ],
                  // ),
const SizedBox(height: 50,)
              ],
            ),
          ),
        ),

    );
  }
}
