import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theams/colors.dart';

class Degrees extends StatefulWidget {
  const Degrees({
    super.key,
  });
  @override
  State<Degrees> createState() => _DegreesState();
}

class _DegreesState extends State<Degrees> {
  @override
  bool open = false;
  int? currentIndex;
  List<Map<String, String>> images = [
    {
      'image': 'lib/assets/images/c1.jpeg',
      'name': 'ECPC 2022 Qualifications',
    },
    {
      'image': 'lib/assets/images/c2.jpeg',
      'name': 'ECPC 2023 Qualifications',
    },
    {
      'image': 'lib/assets/images/c++.jpeg',
      'name': 'C++',
    },
    {
      'image': 'lib/assets/images/f1.jpeg',
      'name': 'Flutter Complete Course',
    },
    {
      'image': 'lib/assets/images/f2.jpeg',
      'name': 'Flutter Payment Course',
    },
    {
      'image': 'lib/assets/images/sq1.jpeg',
      'name': 'SQL Introduction',
    },
    {
      'image': 'lib/assets/images/sq2.jpeg',
      'name': 'SQL Intermediate',
    },
    {
      'image': 'lib/assets/images/wrok-shop.jpg',
      'name': 'FLUTTER WORKSHOP',
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'Degrees',
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
          LiveGrid(
            shrinkWrap: true,
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: width > 900 ? 4 : 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: width > 900 ? 1 : .80,
            ),
            itemBuilder: animationItemBuilder((index) => MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      open = true;
                      currentIndex = index;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      open = false;
                    });
                  },
                  child: AnimatedContainer(
                    padding: const EdgeInsets.all(5),
                    width: open && currentIndex == index ? 350 : 300,
                    duration: const Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: open && currentIndex == index
                                ? AppColors.mainColor.withOpacity(.4)
                                : Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 7,
                            offset: Offset(
                                0, open && currentIndex == index ? 0 : 3),
                          )
                        ]),
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Image(
                            image: AssetImage(images[index]['image']!),
                          ),
                          onTap: () {
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
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(images[index]['name']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.mainColor,
                                fontSize: width > 900 ? 20 : 15,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ]),
      ),
    );
  }
}

Widget Function(
  BuildContext context,
  int index,
  Animation<double> animation,
) animationItemBuilder(
  Widget Function(int index) child, {
  EdgeInsets padding = EdgeInsets.zero,
}) =>
    (
      BuildContext context,
      int index,
      Animation<double> animation,
    ) =>
        FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin:
                  index % 2 == 0 ? const Offset(-0.1, 0) : const Offset(0.1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: Padding(
              padding: padding,
              child: child(index),
            ),
          ),
        );
