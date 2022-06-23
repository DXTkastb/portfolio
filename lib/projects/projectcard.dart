import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as hyperlink;

class ProjectCard extends StatelessWidget {
  Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }

  final String projectname;
  final String info;
  final String img;
  final List<String> stack;
  final String codeurl;
  final String demourl;

  const ProjectCard(
    this.projectname,
    this.info,
    this.stack,
    this.codeurl,
    this.demourl,
    this.img,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      width: 480,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          shadowColor:

          const Color.fromRGBO(2, 30, 50, 1.0),
          elevation: 15,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color:
          const Color.fromRGBO(200, 231, 255, 1.0),
          child: Column(
            children: [
              // (ismob)?const SizedBox():

              Padding(
                padding: const EdgeInsets.all(00),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight:  Radius.circular(20)),
                  child: Image(
                    filterQuality: FilterQuality.low,
                    image: AssetImage(img),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          projectname,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 30),
                        child: Text(
                          info,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        )),
                     Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Wrap(
                        children: [
                          ...stack.map((e) {

                            return StackClip(e);

                          }).toList()
                        ],

                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              launchUrl(codeurl);
                            },
                            child: const BottomText('CODE')),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              launchUrl(demourl);
                            },
                            child: const BottomText('DEMO')),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  final String input;

  const BottomText(this.input);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

        padding: const EdgeInsets.all(5),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 2),color: Colors.white,),
        child: Text(
          input,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ));
  }
}

class StackClip extends StatelessWidget {
  final String input;

  const StackClip(this.input);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(left: 7,right: 7,top: 5,bottom: 5),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Text(
        input,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w100, fontSize: 14),
      ),
    );
  }
}
