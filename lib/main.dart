import 'package:flutter/material.dart';
import '../aboutme/about_me.dart';
import '../contact/contactScreen.dart';
import '../homescreen/homescreen.dart';
import '../projects/ProjectsScreen.dart';
import '../skills/carRow.dart';


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
