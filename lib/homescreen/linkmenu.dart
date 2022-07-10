import 'package:flutter/material.dart';
import '../buttons/bar_buttons.dart';
import '../routelinks/route_link.dart';

class LinkMenu extends StatefulWidget {
  const LinkMenu({Key? key}) : super(key: key);

  @override
  State<LinkMenu> createState() => _LinkMenuState();
}

class _LinkMenuState extends State<LinkMenu> {
  OverlayEntry? overlayEntry;
  TextStyle textStyle = TextStyle(
      fontSize: 25, fontFamily: 'Roboto',
      color: Colors.teal.shade400,fontWeight: FontWeight.bold,
      decoration: TextDecoration.none);

  void navigate(String s) {
    Future.delayed(Duration.zero, () {}).then((value) {
      overlayEntry!.remove();
      overlayEntry = null;
    }).then((value) {
      Future.delayed(const Duration(microseconds: 1000), () {
        Navigator.of(context).pushNamed(RouteLink.links[s]!);
      });
    });
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
    var h = MediaQuery
        .of(context)
        .size
        .height;


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
                                fontFamily: 'Roboto',
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
                    onTap: () {
                      navigate('PROJECTS')
                      ;
                    },
                    child: Text(
                      'PROJECTS',
                      style: textStyle
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigate('STACK')
                      ;
                    },
                    child: Text(
                      'STACK',
                      style: textStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigate('SKILLS')
                      ;
                    },
                    child: Text(
                      'SKILLS',
                      style: textStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigate('ABOUT ME')
                      ;
                    },
                    child: Text(
                      'ABOUT ME',
                      style: textStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigate('CONTACT')
                      ;
                    },
                    child: Text(
                      'CONTACT ME',
                      style: textStyle,
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
