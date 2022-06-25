import 'package:flutter/material.dart';
import 'package:portfolio/routelinks/route_link.dart';

class BarButtons extends StatelessWidget {
  final String insideText;
  final Color cc2;
  final String? path;

  const BarButtons(this.insideText, this.cc2, this.path);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {

          if (path == null) return;
          if (path!.compareTo('contact') == 0) {
            Navigator.of(context).pushNamed(RouteLink.links[insideText]!);
            return;
          }
          if (path!.compareTo('project') == 0) {
            Navigator.of(context).pushNamed(RouteLink.links[insideText]!);
            return;
          }
          if (path!.compareTo('stack') == 0) {
            Navigator.of(context).pushNamed(RouteLink.links[insideText]!);
            return;
          }
          if (path!.compareTo('about me') == 0) {
            Navigator.of(context).pushNamed('/aboutme');
            return;
          }
          if (path!.compareTo('back') == 0) {
            Navigator.of(context).pop();
            return;
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
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.teal.shade300),
            // const Color.fromRGBO(85, 132, 172, 1.0)),
            padding: MaterialStateProperty.resolveWith((states) =>
            const EdgeInsets.all(30)),
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
