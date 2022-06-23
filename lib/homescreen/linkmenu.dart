import 'package:flutter/material.dart';
import 'package:portfolio/buttons/BarButtons.dart';
import 'package:portfolio/buttons/resumebutton.dart';

import '../routelinks/route_link.dart';

class LinkMenu extends StatefulWidget {
  @override
  State<LinkMenu> createState() => _LinkMenuState();
}

class _LinkMenuState extends State<LinkMenu> {
  OverlayEntry? overlayEntry = null;

  void navigate(String s){
    Future.delayed(Duration.zero,(){
    }).then((value) {
      overlayEntry!.remove();
      overlayEntry=null;


    }).then((value) {

      Future.delayed( const Duration(microseconds: 1000),(){   Navigator.of(context).pushNamed(RouteLink.links[s]!);});});

  }



  void onpress() {

    overlayEntry = createOverLay();
    Overlay.of(context)!.insert(overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return BarButtons2(onpress);
  }

  OverlayEntry createOverLay() {
    var h = MediaQuery.of(context).size.height;


    return OverlayEntry(builder: (context) {
      return Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: Stack(children: [
                  Positioned(
                    right: 10,
                    top: 10,
                    child: TextButton(
                      onPressed: () {
                        overlayEntry!.remove();
                        overlayEntry = null;
                      },
                      child: Padding(
                          padding: const EdgeInsets.only(right: 5, top: 2),
                          child: Text(
                            'X',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,

                                fontSize: 30,
                                color: Colors.amber.shade600),
                          )),
                    ),
                  ),
                ]),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){


                      navigate('PROJECTS')
                      ;


                    },
                    child: Text(
                      'PROJECTS',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal.shade400,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      navigate('STACK')
                      ;
                    },
                    child: Text(
                      'STACK',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal.shade400,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      navigate('SKILLS')
                      ;
                    },
                    child: Text(
                      'SKILLS',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal.shade400,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      navigate('ABOUTME')
                      ;
                    },
                    child: Text(
                      'ABOUT ME',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal.shade400,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: (){
                      navigate('CONTACT')
                      ;
                    },
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.teal.shade400,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox())
            ],
          ));
    });
  }

  @override
  void dispose() {
    if (overlayEntry != null) {
      overlayEntry!.remove();
      overlayEntry = null;
    }
    super.dispose();
  }
}
