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
      'Socio',
      'Social Media App with features similar to Intagram.\n\n \u2022  Create account (signup) and login\n\n \u2022  Add image posts and image stories\n\n \u2022  Search and follow other users and see their profile\n\n \u2022  Comment and like a post receive\n\n \u2022  Push notifications for like/comment/follow activities',
      ['Flutter', 'Dart', 'MySQL', 'Redis','Spring Boot','RSocket'],
      'https://github.com/DXTkastb/social-app',
      '',
    ),
    Project(
      'Resk Reminder App',
      'Help users by setting reminders and notifying them at appropriate time.\n\n \u2022  Add Daily Tasks\n\n \u2022  Set Reminders for Daily Tasks\n\n \u2022  Check progress of you Tasks \n\n \u2022  Add Brief Tasks',
      ['Flutter', 'Dart', 'SQLite', 'Android'],
      'https://github.com/DXTkastb/Resk',
      'XSBiWxVDPDc',
    ),
    Project(
      'Easy-Feedback',
      '\u2022  App uses Google Cloud Speech-To-Text Api to collect feedback data via user audio in real time.'
          '\n\n \u2022  The data collected is sent to backend(Spring App, SQL database) where it is processed with GCP Natural Language Api and stored in database.'
          '\n\n \u2022  Natural Language Api helps to retrieve useful information about speech data such as user likes/dislikes/rating.'
          '\n\n \u2022  Businesses/Organisations can view feedbacks, provided by users, using web app(Flutter Web App).',
      ['Flutter', 'Spring', 'MySQL', 'RestFul API'],
      'https://github.com/DXTkastb/EasyFeedback',
      'YZAfR7uYI3E',
    ),
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
    //     'images/projectimg/
    Project(
      'Fatigue Detection',
      'Detecting fatigue in vehicle drivers using EEG Brain signals.[DRDO Group Project.Only Certificate available]'
          '\n\n \u2022 EEG data cleaning using Independent Component Analysis(ICA)'
          '\n\n \u2022 Features such as power-spectral-density, spectral entropy, median frequency were calculated.'
          '\n\n \u2022 Training feature data using Support Vector Machine(SVM). Accuracy of 71±1.2% reached.(test size:25%)'
          '\n\n \u2022 Model deployed on Flask Web App to check driver fatigue level and alert the person in real time',
      [
        'Python',
        'Flask',
        'Server Sent Events',
      ],
      'https://drive.google.com/file/d/1SswKD7vnlpbZIBThtxJudVIZk-V2bXRg/view?usp=sharing',
      '',
    ),
    Project(
      'Portfolio',
      'Personnel project, build with Flutter, which describes my technical background and experience.\n\n \u2022  View Projects \n\n \u2022  Tech Stack \n\n \u2022  My Skills\n\n \u2022  Contact Me',
      [
        'Flutter Web',
        'Dart',
      ],
      'https://github.com/DXTkastb/portfolio',
      '',
    ),
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

  const Project(
    this.name,
    this.info,
    this.stack,
    this.code_url,
    this.demo_url,
  );
}
