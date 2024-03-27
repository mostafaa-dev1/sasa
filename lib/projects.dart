import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/project_item.dart';

import 'constants.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Projects',
              style: TextStyle(
                color: color1,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 140,
              height: 3,
              color: color1,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('lib/assets/images/project_example.jpg')),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ScanGrade',
                              style: TextStyle(
                                color: color1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                  'I specialize in creating visually appealing, high-performance mobile applications.'
                                  ' Excited to contribute my expertise to your team.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20,), Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('lib/assets/images/project_example.jpg')),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ScanGrade',
                              style: TextStyle(
                                color: color1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                  'I specialize in creating visually appealing, high-performance mobile applications.'
                                  ' Excited to contribute my expertise to your team.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, PageTransition(child: ProjectItem(), type: PageTransitionType.fade));
                  },
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                      ],
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage('lib/assets/images/academe.jpg')),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Academe',
                                style: TextStyle(
                                  color: color1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                    'I specialize in creating visually appealing, high-performance mobile applications.'
                                    ' Excited to contribute my expertise to your team.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage('lib/assets/images/project_example.jpg')),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ScanGrade',
                              style: TextStyle(
                                color: color1,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                  'I specialize in creating visually appealing, high-performance mobile applications.'
                                  ' Excited to contribute my expertise to your team.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20,),

              ],
            )
          ],
        ),
      ),
    );
  }
}
