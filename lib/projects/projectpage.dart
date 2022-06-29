import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../buttons/BarButtons.dart';
import '../data/projectdata.dart';
import '../projects/projectcard.dart';

class ProjectPage extends StatelessWidget {
  late Project project;

  @override
  Widget build(BuildContext context) {
    Object? obj = (ModalRoute.of(context)!.settings.arguments);
    if (obj == null) {
      project = const Project(
          'Time tggg', 'dfgdhfgdhfgdhfgdhfgdhfgdhfsf', [], 'dsf', 'sdf', 'sdf');
    } else {
      project = obj as Project;
    }

    return Container(
        alignment: Alignment.center,
        color: const Color.fromRGBO(200, 231, 255, 1.0),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 580),
                  child: VideoPlayer()),
              Container(
                height: 580,
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HerotransitionWdiget(project, false),
                    const BarButtons(
                      'GO BACK',
                      Colors.white,
                      'back',
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class VideoPlayer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VideoPlayerState();
  }
}

class VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController youtubePlayerController;

  @override
  void initState() {
    youtubePlayerController =
        YoutubePlayerController(initialVideoId: '1G4isv_Fylg');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(offset: Offset(0, 0), spreadRadius: 0.2, blurRadius: 10)
      ]),
      child: YoutubePlayerIFrame(
        controller: youtubePlayerController,
      ),
    );
  }
}
