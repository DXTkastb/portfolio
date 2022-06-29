import 'package:flutter/material.dart';
import '../buttons/BarButtons.dart';
import '../contact/form.dart';
import '../launchlink.dart';

class ContactScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (ctx, cons) {
        var isMobile = (cons.maxWidth < 600);
        return Container(
          margin: isMobile
              ? const EdgeInsets.only(left: 10, right: 10, top: 70)
              : const EdgeInsets.all(70),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: BarButtons(
                        'GO BACK', Colors.lightGreen.shade200, 'back')),
                (isMobile)
                    ? const SizedBox(
                        height: 50,
                      )
                    : const SizedBox(
                        height: 200,
                      ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Contact Me",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.green.shade600,
                            fontFamily: 'disp',
                            fontSize: isMobile ? 40 : 60,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 20, left: 20, right: 20),
                          child: Text(
                            'Hi! I\'m looking for full time job opportunities as a Web Developer.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green.shade900,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.8),
                              borderRadius: BorderRadius.circular(45)),
                          padding: const EdgeInsets.only(
                              top: 19, bottom: 21, left: 20, right: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Image(
                                height: 30,
                                image: AssetImage('images/google.png'),
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SelectableText(
                                'dxtkastb@gmail.com',
                                style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1.0),
                                  fontSize: 19,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: (){

                                  LaunchLink.launchUrl('https://www.linkedin.com/in/kaustubhdxt/');
                                },
                                child: const Image(
                                  height: 50,
                                  image: AssetImage('images/link.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: (){

                                  LaunchLink.launchUrl('https://www.instagram.com/dxtkstbh/');
                                },
                                child: const Image(
                                  image: AssetImage('images/insta.png'),
                                  fit: BoxFit.contain,
                                  height: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      width: 500,
                      height: 410,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, bottom: 20, left: 40, right: 40),
                          child: Scaffold(
                            body: ContactForm(),
                            backgroundColor: Colors.transparent,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
// Scaffold(body: ContactForm()),
