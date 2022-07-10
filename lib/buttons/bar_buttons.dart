import 'package:flutter/material.dart';
import '../routelinks/route_link.dart';

class BarButtons extends StatelessWidget {
  final String insideText;
  final Color cc2;
  final String? path;

  const BarButtons(  this.insideText, this.cc2, this.path,{Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {

          if (path == null) {
            Navigator.of(context).pop();
          } else {
            Navigator.of(context).pushNamed(path!);
          }



        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(cc2),
            // const Color.fromRGBO(85, 132, 172, 1.0)),
            padding: MaterialStateProperty.all(const EdgeInsets.only(
                left: 20, top: 30, right: 20, bottom: 30)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(55),
                side: const BorderSide(width: 1)))),
        child: Text(
          insideText,
          style:
              const TextStyle(fontStyle: FontStyle.normal, color: Colors.black,fontSize: 14),
        ));
  }
}


class BarButtons2 extends StatelessWidget {


  final Function()? onpressed;
  const BarButtons2( this.onpressed,);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: onpressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.teal.shade300),
            // const Color.fromRGBO(85, 132, 172, 1.0)),
            padding: MaterialStateProperty.all( const EdgeInsets.all(30))
           ,
            shape: MaterialStateProperty.resolveWith((states) =>
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55),
                    side: const BorderSide(width: 1)))),
        child: const
        Icon(
          Icons.menu_outlined,
          color: Colors.black,
          size: 19.0,
          semanticLabel: 'Resume',
        ));
  }
}
