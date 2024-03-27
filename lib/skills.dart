import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'constants.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Skills',
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.3,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('lib/assets/images/flutter.svg',height: 200,),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 1,
                        height: 200,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                        Expanded(
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flutter',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#069AFF'),
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                  'I specialize in creating visually appealing, high-performance mobile applications.'
                                  ' Excited to contribute my expertise to your team.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Local databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Shared Preferences',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Hive',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Sqflite',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Firebase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Supabase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Stat Management',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc Provider',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                              ]
                            )
                          ],
                         ),
                       )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.3,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Expanded(
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'C++',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#069AFF'),
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                  'I specialize in creating visually appealing, high-performance mobile applications.'
                                  ' Excited to contribute my expertise to your team.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Local databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Shared Preferences',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Hive',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Sqflite',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Firebase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Supabase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Stat Management',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc Provider',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                              ]
                            )
                          ],
                         ),
                       ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 1,
                        height: 200,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      SvgPicture.asset('lib/assets/images/c.svg',height: 200,),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.3,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('lib/assets/images/browser.png',height: 200,),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 1,
                        height: 200,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                        Expanded(
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HTML & CSS',
                              style: TextStyle(
                                fontSize: 25,
                                color: HexColor('#069AFF'),
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                  'I specialize in creating visually appealing, high-performance mobile applications.'
                                  ' Excited to contribute my expertise to your team.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Local databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Shared Preferences',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Hive',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Sqflite',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Firebase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Supabase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Stat Management',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc Provider',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                              ]
                            )
                          ],
                         ),
                       ),

                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.3,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Expanded(
                         child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'System analysis & design',
                              style: TextStyle(
                                fontSize: 25,
                                color: HexColor('#069AFF'),
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'a skilled Flutter developer with one year of experience. Proficient in Dart and Flutter framework, '
                                  'I specialize in creating visually appealing, high-performance mobile applications.'
                                  ' Excited to contribute my expertise to your team.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Local databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Shared Preferences',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Hive',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Sqflite',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Databases',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Firebase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Supabase',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '• Stat Management',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                                      child: Text(
                                        '- Bloc Provider',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ) ,
                                  ],
                                ),
                              ]
                            )
                          ],
                         ),
                       ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 1,
                        height: 200,
                        color: Colors.grey[300],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Image.asset('lib/assets/images/computer.png',height: 200,),


                    ],
                  ),
                ),
              ],
            ),
          ],

      ),
    );
  }
}
