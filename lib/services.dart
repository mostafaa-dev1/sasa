import 'package:flutter/material.dart';

import 'constants.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  bool open = false;
  int? currentIndex ;
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Services',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      onEnter: (_){
                        setState(() {
                          open = true;
                          currentIndex=0;
                        });
                      },
                      onExit: (_){
                        setState(() {
                          open = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        padding: EdgeInsets.all(20),
                        width: 320,
                        height: 250,
                        decoration: BoxDecoration(
                          color: open&&currentIndex==0?color1:Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            )
                          ]
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('lib/assets/images/${open&&currentIndex==0?'mobile2.png':'mobile1.png'}'),
                                width: 120,
                                height: 80,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Create Mobile Apps with Flutter',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: open&&currentIndex==0?Colors.white:Colors.black
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    MouseRegion(
                      onEnter: (_){
                        setState(() {
                          open = true;
                          currentIndex=1;
                        });
                      },
                      onExit: (_){
                        setState(() {
                          open = false;

                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        padding: EdgeInsets.all(10),
                        width: 320,
                        height: 250,
                        decoration: BoxDecoration(
                          color:open&&currentIndex==1?color1: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            )
                          ]
                        ),
                        child:  Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('lib/assets/images/${open&&currentIndex==1?'coding2.png':'coding.png'}'),
                                width: 120,
                                height: 80,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Create Web Apps with Flutter',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: open&&currentIndex==1?Colors.white:Colors.black
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ]
          ),
        )
    );
  }
}
