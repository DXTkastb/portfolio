class ProjectData {
  static const List<Project> project_list = [
    // Project(
    //     'RealTime Chat App',
    //     'The app lets users interact with other users in realtime. People can send messages,images and short videos.',
    //     [
    //       'Flutter',
    //       'Reactive Spring',
    //       'WebSockets',
    //       'Authentication',
    //       'Authorization',
    //       'JWT',
    //       'Reactive RabbitMq',
    //       'Redis',
    //       'Java',
    //       'Dart'
    //     ],
    //     'some.github.com',
    //     'some.demo.com',
    //     'images/projectimg/galaxy.jpg'),
    Project(
        'Resk Reminder App',
        'Help users by setting reminders and notifying them at appropriate time.\n\n \u2022  Add Daily Tasks\n\n \u2022  Set Reminders for Daily Tasks\n\n \u2022  Check progress of you Tasks \n\n \u2022  Add Brief Tasks',
        ['Flutter', 'Dart', 'SQLite','Android'],
        'https://github.com/DXTkastb/Resk',
        'some.demo.com',
        ' '),
    // Project(
    //     'Talback',
    //     'Bored of typing feedbacks/reviews? Talback Widget enables external applications to get reviews using Google\'s Speech-To-Text Cloud Api. When integrated'
    //         ' users can tap a button and convey their thoughts via speech, which will be shared to respective businesses/companies',
    //     [
    //       'Flutter',
    //       'Dart',
    //       'RestFul API',
    //     ],
    //     'https://github.com/DXTkastb',
    //     'some.demo.com',
    //     'images/projectimg/forest.jpg'),
    // Project(
    //     'Multiplayer HoneyComb Maze',
    //     'Inspired by famous television show Takeshi\'s Castle, this 2D multiplayer game requires two players to find hidden keys inside a maze. Sounds easy? play the game to find it yourself.',
    //     [
    //       'Flame',
    //       'Flutter',
    //       'WebRTC',
    //       'Dart',
    //     ],
    //     'some.github.com',
    //     'some.demo.com',
    //     'images/projectimg/flower.jpg'),
    Project(
        'Portfolio',
        'Personnel project, build with Flutter, which describes my technical background and experience.\n\n \u2022  View Projects \n\n \u2022  Tech Stack \n\n \u2022  My Skills\n\n \u2022  Contact Me',
        [
          'Flutter Web',
          'Dart',
        ],
        'https://github.com/DXTkastb/portfolio',
        ' ',
        'images/projectimg/portfolio.jpg'),
    // Project(
    //     'MLTags',
    //     'Suggest hashtags for an image. Using Google Computer Vision this app helps users generate hashtags for an image.',
    //     [
    //       'Flutter',
    //       'Dart',
    //     ],
    //     'some.mltags.com',
    //     'some.demo.com',
    //     'images/projectimg/portfolio.jpg'),
  ];
}

class Project {
  final String name;
  final String info;
  final List<String> stack;
  final String code_url;
  final String demo_url;
  final String img;

  const Project(
      this.name, this.info, this.stack, this.code_url, this.demo_url, this.img);
}
