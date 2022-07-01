import 'package:flutter/material.dart';
import 'package:portfolio/skills/skills_page.dart';

import '../aboutme/about_me.dart';
import '../contact/contactScreen.dart';
import '../homescreen/homescreen.dart';
import '../projects/project_screen.dart';
import '../projects/projectpage.dart';
import '../stack/stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenBlock(),
      routes: {
        '/stack': (_) {
          return const SkillPage();
        },
        '/skill': (_) {
          return const StackScreen();
        },
        '/aboutme': (_) {
          return const AboutMe();
        },
        '/contact': (_) {
          return const ContactScreen();
        },
        '/projects': (_) {
          return const ProjectScreen();
        },
        '/projectpage': (_) {
          return ProjectPage();
        }
      },
    );
  }
}
