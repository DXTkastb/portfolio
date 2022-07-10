import 'package:flutter/material.dart';

import '../buttons/bar_buttons.dart';
import '../contact/form.dart';
import '../launchlink.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  Container(
      color: Colors.white,
      padding:
      const EdgeInsets.only(top: 70, bottom: 10),
      child: LayoutBuilder(builder: (ctx,conx){
        var isMobile=(conx.maxWidth<600);
        return SingleChildScrollView(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: conx.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: BarButtons(
                        'GO BACK', Colors.lightGreen.shade200, null)),
                Wrap(

                  alignment: WrapAlignment.spaceEvenly,

                  children: [
                    Container(

                      height: 410,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              'Hi! I\'m looking for full time job opportunities as a Web/Mobile App Developer.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
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
                                    fontSize: 19, fontWeight: FontWeight.w700,decoration: TextDecoration.none,
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
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    LaunchLink.launchUrl(
                                        'https://www.linkedin.com/in/kaustubhdxt/');
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
                                  onTap: () {
                                    LaunchLink.launchUrl(
                                        'https://www.instagram.com/dxtkstbh/');
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
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      width: 600,
                      height: 410,
                      child: const Scaffold(
                        body: ContactForm(),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60,),
              ],
            ),
          ),
        );
      })
    );
  }
}
// Scaffold(body: ContactForm()),
