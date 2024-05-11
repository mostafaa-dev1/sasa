import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/logic/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  List<String> aboutTitle = [
    'Who am I?',
    'Experience',
    'Skills',
    'Languages',
    'Outside of coding',
  ];

  List<String> aboutText = [
    '👋 Hello again! I\'m Mostafa mahmoud from Egypt/Cairo, currently in my third year of college, passionately immersed in the world of programming. My love for coding goes beyond the classroom as I actively participate in programming competitions,'
        ' constantly challenging myself to explore new horizons in the ever-evolving tech landscape.',
    'My expertise lies in Flutter, where I channel my creativity and problem-solving skills to craft engaging and efficient applications. The thrill of turning ideas into functional code is what fuels my enthusiasm for programming,',
    'In addition to my technical prowess, I thrive in dynamic environments. I find solace in the midst of challenges, showcasing my ability to work under pressure and deliver results. Team collaboration is my forte, as I believe in the power of collective intelligence to achieve remarkable outcomes.',
    'Good in English, I leverage effective communication to bridge the gap between ideas and execution. Whether it\'s writing clear and concise code or articulating complex concepts, I understand the importance of language in the tech world.',
    'Outside of coding, you might find me exploring new technologies, staying updated on industry trends, or simply unwinding with a good book. My journey in the tech realm is an ongoing adventure, and I\'m excited to continue pushing boundaries and making meaningful contributions.',
  ];

  List<String> skillsImages = [
    'lib/assets/images/flutter.png',
    'lib/assets/images/c++.png',
    'lib/assets/images/html.png',
    'lib/assets/images/system.png',
  ];
  List<String> skillsText = [
    'A skilled Flutter developer with two years of experience. Proficient in Dart and Flutter framework, '
        'I specialize in creating visually appealing, high-performance mobile applications.'
        ' Excited to contribute my expertise to your team.',
    'Highly motivated C++ developer with a strong foundation in problem-solving, object-oriented programming (OOP) principles, and data structures. Adept at crafting efficient and maintainable C++ code to deliver robust software solutions',
    'Good working knowledge of HTML & CSS: builds well-structured, semantic web pages with effective styling for layout, responsiveness, and user experience..',
    'I possess a well-rounded understanding of system design and analysis principles, I can consider the bigger picture, analyze user needs, and design systems that are not only functional but also scalable, maintainable, and efficient,y understanding of system design principles helps me decompose complex problems into smaller, By applying system analysis techniques, I can identify user pain points and design user interfaces that are intuitive and user-friendly.',
  ];
  List<String> skillsTitle = [
    'Flutter',
    'C++',
    'HTML & CSS',
    'System Analysis & Design',
  ];

  List<Map<String, dynamic>> projects = [
    {
      'title': 'Academe',
      'subTitle': 'University Management System',
      'description': 'A university management system developed using Flutter. ',
      'images': [
        'lib/assets/images/academe/1.png',
        'lib/assets/images/academe/2.png',
        'lib/assets/images/academe/3.png',
        'lib/assets/images/academe/4.png',
        'lib/assets/images/academe/5.png',
      ],
      'startDate': '1/6/2023',
      'endDate': '1/1/2024',
    },
    {
      'title': 'Premium',
      'subTitle': 'Online Shopping App',
      'description': 'An online shopping app developed using Flutter. ',
      'images': [
        'lib/assets/images/premium/1.png',
        'lib/assets/images/premium/2.png',
        'lib/assets/images/premium/3.png',
        'lib/assets/images/premium/4.png',
        'lib/assets/images/premium/5.png',
        'lib/assets/images/premium/6.png',
        'lib/assets/images/premium/7.png',
        'lib/assets/images/premium/8.png',
      ],
      'startDate': '1/3/2024',
      'endDate': '1/4/2024',
    },
    {
      'title': 'Grocery',
      'subTitle': 'Grocery App',
      'description': 'A grocery app developed using Flutter. ',
      'images': [
        'lib/assets/images/grocery/1.png',
        'lib/assets/images/grocery/2.png',
        'lib/assets/images/grocery/3.png',
        'lib/assets/images/grocery/4.png',
        'lib/assets/images/grocery/5.png',
        'lib/assets/images/grocery/6.png',
      ],
      'startDate': '15/3/2024',
      'endDate': '1/4/2024',
    },
    {
      'title': 'E-Commerce(Tree)',
      'subTitle': 'E-Commerce App',
      'description': 'An E-Commerce app developed using Flutter. ',
      'images': [
        'lib/assets/images/tree/1.png',
        'lib/assets/images/tree/2.png',
        'lib/assets/images/tree/3.png',
        'lib/assets/images/tree/4.png',
        'lib/assets/images/tree/5.png',
        'lib/assets/images/tree/6.png',
        'lib/assets/images/tree/7.png',
      ],
      'startDate': '25/4/2023',
      'endDate': '1/5/2023',
    },
    {
      'title': 'Coffeeccino',
      'subTitle': 'Coffee App',
      'description': 'A coffee app developed using Flutter. ',
      'images': [
        'lib/assets/images/coffee/1.png',
        'lib/assets/images/coffee/2.png',
        'lib/assets/images/coffee/3.png',
        'lib/assets/images/coffee/4.png',
        'lib/assets/images/coffee/5.png',
        'lib/assets/images/coffee/6.png',
        'lib/assets/images/coffee/7.png',
      ],
      'startDate': '1/5/2024',
      'endDate': '15/5/2024',
    }
  ];
}
