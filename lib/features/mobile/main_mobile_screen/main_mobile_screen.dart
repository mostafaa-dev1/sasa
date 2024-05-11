import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/theams/fonts.dart';
import 'package:portfolio/features/shared_widgets/about.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:portfolio/core/widgets/experienceCircle.dart';
import 'package:portfolio/core/widgets/socialmedia_icon.dart';
import 'package:portfolio/features/shared_widgets/degrees.dart';
import 'package:portfolio/features/mobile/home/home.dart';
import 'package:portfolio/features/mobile/skills/skills.dart';
import 'package:portfolio/features/shared_widgets/projects.dart';
import 'package:portfolio/features/shared_widgets/services.dart';
import 'package:portfolio/features/desktop/skills/skills.dart';
import 'package:url_launcher/url_launcher.dart';

class MainMobileScreen extends StatefulWidget {
  const MainMobileScreen({super.key});

  @override
  State<MainMobileScreen> createState() => _MainMobileScreenState();
}

List<String> headerList = [
  'Home',
  'About',
  'Skills',
  'Projects',
  'Degrees',
  'Services'
];
List<IconData> icons = [
  Icons.home,
  Icons.person,
  Icons.book,
  Icons.pages,
  Icons.workspace_premium,
  Icons.settings
];
int currentIndex = 0;
var scrollController = ScrollController();
double pixels = 0.0;
final GlobalKey<SliderDrawerState> _sliderDrawerKey =
    GlobalKey<SliderDrawerState>();

class _MainMobileScreenState extends State<MainMobileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      setState(() {
        pixels = scrollController.position.pixels;
        print(pixels);
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Portfolio',
            style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 30,
                fontFamily: AppFonts.font1,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              HomeMobile(),
              About(),
              SizedBox(height: 40),
              SkillsMobile(),
              Degrees(),
              Projects(),
              Services()
            ]),
          )),
        ));
  }
}
