import 'package:flutter/material.dart';

import 'constants.dart';

class Degrees extends StatefulWidget {
  const Degrees({super.key});

  @override
  State<Degrees> createState() => _DegreesState();
}

class _DegreesState extends State<Degrees> {
  @override
  bool open = false;
  int? currentIndex;
  List<Map<String,String>>images= [
    {
      'image':'lib/assets/images/c1.jpeg',
      'name':'ECPC 2022 Qualifications',
    },{
      'image':'lib/assets/images/c2.jpeg',
      'name':'ECPC 2023 Qualifications',
    },{
      'image':'lib/assets/images/c++.jpeg',
      'name':'C++',
    },{
      'image':'lib/assets/images/f1.jpeg',
      'name':'Flutter Complete Course',
    },{
      'image':'lib/assets/images/f2.jpeg',
      'name':'Flutter Payment Course',
    },{
      'image':'lib/assets/images/sq1.jpeg',
      'name':'SQL Introduction',
    },{
      'image':'lib/assets/images/sq2.jpeg',
      'name':'SQL Intermediate',
    },
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Degrees',
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
            GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return MouseRegion(
                    onEnter: (_){
                      setState(() {
                        open = true;
                        currentIndex = index;
                      });
                    },
                    onExit: (_){
                      setState(() {
                        open = false;
                      });
                    },
                    child: AnimatedContainer(
                      padding: EdgeInsets.all(5),
                      width: open&&currentIndex==index?350:300,
                      duration: Duration(milliseconds: 500),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: open&&currentIndex==index?color1.withOpacity(.4):Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset:  Offset(0, open&&currentIndex==index?0:3),
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Image(
                                image: AssetImage(images[index]['image']!),
                            ),
                            onTap: (){
                              // showAboutDialog(
                              //     context: context,
                              //     applicationName: 'ECPC',
                              //     children: [
                              //       Text('This is a test')
                              //     ],
                              //
                              //     applicationIcon: Image(
                              //         image: AssetImage(
                              //             'lib/assets/images/c1.jpeg')
                              //     )
                              // );
                              // showDialog(
                              //     context: context,
                              //     barrierDismissible: true,
                              //     builder: (context) => const SizedBox(
                              //       width: 800,
                              //       height: 400,
                              //       child: Image(image: AssetImage(),
                              //         width: 800,
                              //         height: 400,
                              //       ),
                              //     )
                              // );
                            },
                          ),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                                images[index]['name']!,
                                style: TextStyle(
                                  color: color1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
            ),

          ]
        ),
      ),
    );
  }
}
