import 'package:flutter/material.dart';
import '../contact/form.dart';
import '../buttons/BarButtons.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder:(ctx,cons){
        var isMobile = (cons.maxWidth<505);
        return Container(
          margin: isMobile?const EdgeInsets.only(left: 10,right: 10,top: 70):const EdgeInsets.all(70),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child:
                    BarButtons('GO BACK', Colors.lightGreen.shade200, 'back')),
                const SizedBox(
                  height: 130,
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Contact Me",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.green.shade600,
                            fontFamily: 'disp',
                            fontSize: isMobile?40:60,
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
                              border: Border.all(color: Colors.black, width: 0.8),
                              borderRadius: BorderRadius.circular(45)),
                          padding: const EdgeInsets.only(
                              top: 19, bottom: 21, left: 20, right: 20),
                          child: const SelectableText(
                            'dxtkastb@gmail.com',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1.0),
                              fontSize: 19,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, width: 5),
                        color: Colors.white,
                      ),
                      width: 500,
                      height: 560,
                      child: Padding(
                          padding: const EdgeInsets.all(30),
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
      } ,
    );
  }
}
// Scaffold(body: ContactForm()),
