import 'package:flutter/material.dart';
import 'package:portfolio/core/theams/colors.dart';

class Services extends StatefulWidget {
  const Services({
    super.key,
  });
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  bool open = false;
  int? currentIndex;
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              'Services',
              style: TextStyle(
                color: AppColors.mainColor,
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
              color: AppColors.mainColor,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      open = true;
                      currentIndex = 0;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      open = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    padding: const EdgeInsets.all(20),
                    width: width > 900 ? width / 4 : width / 3,
                    height: width > 900 ? 250 : 170,
                    decoration: BoxDecoration(
                        color: open && currentIndex == 0
                            ? AppColors.mainColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          )
                        ]),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                                'lib/assets/images/${open && currentIndex == 0 ? 'mobile2.png' : 'mobile1.png'}'),
                            width: 120,
                            height: width > 900 ? 80 : 60,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Create Mobile Apps with Flutter',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width > 900 ? 18 : 14,
                                color: open && currentIndex == 0
                                    ? Colors.white
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      open = true;
                      currentIndex = 1;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      open = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    padding: const EdgeInsets.all(10),
                    width: width > 900 ? width / 4 : width / 3,
                    height: width > 900 ? 250 : 170,
                    decoration: BoxDecoration(
                        color: open && currentIndex == 1
                            ? AppColors.mainColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          )
                        ]),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(
                                'lib/assets/images/${open && currentIndex == 1 ? 'coding2.png' : 'coding.png'}'),
                            width: 120,
                            height: width > 900 ? 80 : 60,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Create Web Apps with Flutter',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width > 900 ? 18 : 14,
                                color: open && currentIndex == 1
                                    ? Colors.white
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
