import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:portfolio/core/widgets/experienceCircle.dart';
import 'package:portfolio/core/widgets/socialmedia_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
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

  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, I\'m',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text('Mostafa Mahmoud',
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 40,
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
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.mainColor, AppColors.lightBlue],
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
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            const Image(
              image: AssetImage('lib/assets/images/me1.png'),
              height: 600,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Experience(
                  textSize: 10,
                  numberSize: 15,
                  years: 2,
                  text: 'Years Experience',
                  width: 100,
                  height: 100,
                ),
                Experience(
                  textSize: 10,
                  numberSize: 15,
                  years: 3,
                  text: 'Prgramming Experience',
                  width: 100,
                  height: 100,
                ),
                Experience(
                  textSize: 10,
                  numberSize: 15,
                  years: 3,
                  text: 'Prgramming Languages',
                  width: 100,
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
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
      const SizedBox(
        height: 120,
      ),
    ]);
  }
}
