import 'package:flutter/material.dart';
import 'package:portfolio/aboutme/about_me.dart';
import 'package:portfolio/contact/contactScreen.dart';
import 'package:portfolio/homescreen/homescreen.dart';
import 'package:portfolio/projects/ProjectsScreen.dart';
import 'package:portfolio/skills/carRow.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(



      // routes: {'/skills':(_)=>SkillScreen()},
      debugShowCheckedModeBanner: false,
      home: HomeScreenBlock(),
      routes: {
        '/stack':(_){
          return SkillScreen();
        },
        '/aboutme':(_){
          return AboutMe();
        },
        '/contact':(_){
          return ContactScreen();
        },
        '/projects':(_){
          return ProjectScreen();
        }

      },

    );
  }
}