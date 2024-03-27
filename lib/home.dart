

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/degrees.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/services.dart';
import 'package:portfolio/skills.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

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
  List<String> headerList = ['Home','About','Skills','Projects','Degrees','Services'];
  var scrollController = ScrollController();
  void manageTime(){
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        open = true;
        print(open);
      });
    });
  }
  final Uri facebookUrl = Uri.parse('https://www.facebook.com/m0stafa.ma7moud');
  final Uri twitterUrl = Uri.parse('https://twitter.com/SaSaa_108');
  final Uri instagramUrl = Uri.parse('https://www.instagram.com/m0stafa._.ma7moud/');
  final Uri linkedinUrl = Uri.parse('https://www.linkedin.com/in/mostafa-mahmoud-174529224');

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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leadingWidth: 300,
        leading:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 50),
          child: Text(
              currentIndex==0?'Portfolio':headerList[currentIndex],
              style: TextStyle(
                color: HexColor('#069AFF'),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'font1',
              )
          ),
        ),
        title: SizedBox(
          height: 30,
          child: ListView.separated(
            shrinkWrap: true,
              primary: true,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
              return InkWell(
                overlayColor: MaterialStatePropertyAll(
                  Colors.transparent
                ),
                onTap: (){
                  setState(() {
                    currentIndex=index;
                    if(index==3){
                      scrollController.animateTo(
                          (index+0.5)*MediaQuery.of(context).size.height,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut
                      );
                    }else if(index==4){
                      scrollController.animateTo(
                          (index+0.2)*MediaQuery.of(context).size.height,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut
                      );
                    }else {
                      scrollController.animateTo(
                          index * MediaQuery.of(context).size.height,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut
                      );
                    }
                  });

                },
                child: Column(
                    children: [
                      Text(
                          headerList[index],
                          style: TextStyle(
                            color:index==currentIndex? HexColor('#069AFF'): Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      index==currentIndex?Container(
                        height: 3,
                        width: 40,
                        color: HexColor('#069AFF'),
                      ):SizedBox()
                    ]
                ),
              );
              },
              separatorBuilder: (context, index) => SizedBox(
                width: 50,
              ),
              itemCount: headerList.length
          ),
        )
      ),
      body:  SingleChildScrollView(
        controller: scrollController,
        child: WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
            duration: Duration(seconds: 2),
            delay: Duration(milliseconds: 500),

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
                                  Text(
                                    'Hello, I\'m',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'Mostafa Mahmoud',
                                    style: TextStyle(
                                      color: HexColor('#069AFF'),
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'font2',
                                    )
                                  ),
                                  Text(
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    'Welcome to my site ! I\'m a Flutter developer who will help you to build your app with the best quality and'
                                        'i will be happy if you see my work.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                        
                                    )
                                  ),
                                  SizedBox(height: 40,),
                                  Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          HexColor('#069AFF'),
                                          Colors.lightBlueAccent
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: TextButton(
                                        onPressed: (){},
                                        child: Text(
                                          'View My Work',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                    ),
                                  ),
                                  SizedBox(height: 50,),
                                  Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                        height: 100,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:color1.withOpacity(0.1),
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '2',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#069AFF'),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                ),
                                                Text(
                                                  'years experience',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#069AFF'),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                      ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                        height: 100,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: HexColor('#069AFF').withOpacity(0.1),
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(

                                                  '2',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#069AFF'),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                ),Text(
                                                  '2',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#069AFF'),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                ),
                                                Text(
                                                  'years experience',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#069AFF'),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                      ),
                                    Container(

                                      padding: EdgeInsets.all(10),
                                        height: 100,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: HexColor('#069AFF').withOpacity(0.1),
                                        ),
                                        child:  Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '2',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#069AFF'),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                ),
                                                Text(
                                                  'years experience',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: HexColor('#069AFF'),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),

                                      ),
                                  ],
                                                ),
                                ],
                              ),
                            ),
                            SizedBox(height: 80,),
                            Padding(
                              padding: const EdgeInsets.only(left: 100.0),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: (){
                                        _launchURL(facebookUrl);
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: HexColor('#069AFF'),
                                        size: 25,
                                      )
                                  ),
                                  SizedBox(width: 5,),
                                  IconButton(
                                      onPressed: (){
                                        _launchURL(linkedinUrl);
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.linkedinIn,
                                        color: HexColor('#069AFF'),
                                        size: 25,
                                      )
                                  ),
                                  SizedBox(width: 5,),
                                  IconButton(
                                      onPressed: (){
                                        _launchURL(instagramUrl);
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: HexColor('#069AFF'),
                                        size: 25,
                                      )
                                  ),
                                  SizedBox(width: 5,),
                                  IconButton(
                                      onPressed: (){
                        
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.github,
                                        color: HexColor('#069AFF'),
                                        size: 25,
                                      )
                                  ),
                                  SizedBox(width: 5,),
                                  IconButton(
                                      onPressed: (){
                        
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.mailchimp,
                                        color: HexColor('#069AFF'),
                                        size: 25,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  const Image(
                    image: AssetImage('lib/assets/images/me1.png'),
                    height: 600,
                  )
                    ]
                  ),
              SizedBox(height: 120,),
              About(),
              Skills(),
              Projects(),
              Degrees(),
              Services()
            ],
          ),
        ),
      ),
    );
  }
}
