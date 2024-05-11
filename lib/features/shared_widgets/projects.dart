import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/core/logic/cubit.dart';
import 'package:portfolio/core/widgets/project_item.dart';
import 'package:portfolio/features/shared_widgets/project_view.dart';

import '../../core/theams/colors.dart';

class Projects extends StatefulWidget {
  const Projects({
    super.key,
  });

  @override
  State<Projects> createState() => _ProjectsState();
}

List<String> images = [
  'lib/assets/images/academe.jpg',
  'lib/assets/images/academe.jpg',
  'lib/assets/images/academe.jpg',
  'lib/assets/images/academe.jpg',
];

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Projects',
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
              itemCount: cubit.projects.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width > 900 ? 4 : 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: width > 900 ? 1 : .8,
              ),
              itemBuilder: animationItemBuilder((index) {
                var item = AppCubit.get(context).projects[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: ProjectView(
                            item: item,
                          ),
                        ));
                  },
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(10),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                                image: AssetImage(
                                    cubit.projects[index]['images'][0]))),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(cubit.projects[index]['title'],
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontSize: width > 900 ? 20 : 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(cubit.projects[index]['subTitle'],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: width > 900 ? 15 : 13,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
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
