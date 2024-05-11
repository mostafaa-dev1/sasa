import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:portfolio/core/widgets/experienceCircle.dart';
import 'package:portfolio/core/widgets/socialmedia_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });
  @override
  State<Home> createState() => _HomeState();
}

int currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //manageTime();
  }

  bool open = false;
  List<String> headerList = [
    'Home',
    'About',
    'Skills',
    'Projects',
    'Degrees',
    'Services'
  ];
  var scrollController = ScrollController();
  void manageTime() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        open = true;
        print(open);
      });
    });
  }

  final Uri facebookUrl = Uri.parse('https://www.facebook.com/m0stafa.ma7moud');
  final Uri twitterUrl = Uri.parse('https://twitter.com/SaSaa_108');
  final Uri instagramUrl =
      Uri.parse('https://www.instagram.com/m0stafa._.ma7moud/');
  final Uri linkedinUrl =
      Uri.parse('https://www.linkedin.com/in/mostafa-mahmoud-174529224');
  final Uri githubUrl = Uri.parse('https://github.com/mostafaa-dev1');

  void _launchURL(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  void _launchEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(width);
    return WidgetAnimator(
      incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
        duration: const Duration(seconds: 2),
        delay: const Duration(milliseconds: 500),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hello, I\'m',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text('Mostafa Mahmoud',
                                style: TextStyle(
                                  color: HexColor('#069AFF'),
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'font2',
                                )),
                            const Text(
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                'Welcome to my site ! I\'m a Flutter developer who will help you to build your app with the best quality and faster time and'
                                ' i will be happy if you see my work.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                )),
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.mainColor,
                                    AppColors.lightBlue
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text('Hire Me',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Experience(
                                  textSize: 12,
                                  numberSize: 20,
                                  years: 2,
                                  text: 'Years Experience',
                                  width: 120,
                                  height: 100,
                                ),
                                Experience(
                                  textSize: 12,
                                  numberSize: 20,
                                  years: 3,
                                  text: 'Prgramming Experience',
                                  width: 120,
                                  height: 100,
                                ),
                                Experience(
                                  textSize: 12,
                                  numberSize: 20,
                                  years: 3,
                                  text: 'Prgramming Languages',
                                  width: 120,
                                  height: 100,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Row(
                          children: [
                            SocialMediaIcon(
                                onPressed: () {
                                  _launchURL(facebookUrl);
                                },
                                icon: FontAwesomeIcons.facebook),
                            const SizedBox(
                              width: 5,
                            ),
                            SocialMediaIcon(
                                onPressed: () {
                                  _launchURL(linkedinUrl);
                                },
                                icon: FontAwesomeIcons.linkedin),
                            const SizedBox(
                              width: 5,
                            ),
                            SocialMediaIcon(
                                onPressed: () {
                                  _launchURL(instagramUrl);
                                },
                                icon: FontAwesomeIcons.instagram),
                            const SizedBox(
                              width: 5,
                            ),
                            SocialMediaIcon(
                                onPressed: () {
                                  _launchURL(githubUrl);
                                },
                                icon: FontAwesomeIcons.github),
                            const SizedBox(
                              width: 5,
                            ),
                            SocialMediaIcon(
                                onPressed: () {
                                  _launchEmail('mostafaa.dev1@gmail.com');
                                },
                                icon: Icons.mail)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('lib/assets/images/me1.png'),
                  height: 600,
                )
              ]),
          const SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
