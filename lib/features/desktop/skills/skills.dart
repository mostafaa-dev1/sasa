import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/logic/cubit.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:portfolio/core/widgets/left_skill.dart';
import 'package:portfolio/core/widgets/right_skill.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          'Skills',
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
          height: 20,
        ),
        LiveList(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          showItemInterval: Duration(milliseconds: 150),
          showItemDuration: Duration(milliseconds: 350),
          padding: EdgeInsets.all(16),
          reAnimateOnVisibility: true,
          scrollDirection: Axis.vertical,
          itemCount: cubit.skillsImages.length,
          itemBuilder: animationItemBuilder(
            (index) => index % 2 == 0
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: LeftSkill(
                      image: cubit.skillsImages[index],
                      text: cubit.skillsText[index],
                      title: cubit.skillsTitle[index],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: RightSkill(
                      image: cubit.skillsImages[index],
                      text: cubit.skillsText[index],
                      title: cubit.skillsTitle[index],
                    ),
                  ),
          ),
        ),

        const SizedBox(
          height: 50,
        ),
        const SizedBox(
          height: 50,
        ),
        // const RightSkill(
        //   image: 'lib/assets/images/c.png',
        //   text:
        //       'Highly motivated C++ developer with a strong foundation in problem-solving, object-oriented programming (OOP) principles, and data structures. Adept at crafting efficient and maintainable C++ code to deliver robust software solutions',
        //   title: 'C++',
        // ),
        // const SizedBox(
        //   height: 50,
        // ),
        // const LeftSkill(
        //     image: 'lib/assets/images/browser.png',
        //     text:
        //         'Skilled HTML & CSS developer with a passion for crafting clean, responsive, and visually appealing websites. Adept at translating design concepts into functional and user-friendly web experiences.',
        //     title: 'HTML & CSS'),
        // const SizedBox(
        //   height: 50,
        // ),
        // const RightSkill(
        //     image: 'lib/assets/images/computer.png',
        //     text:
        //         'I possess a well-rounded understanding of system design and analysis principles, I can consider the bigger picture, analyze user needs, and design systems that are not only functional but also scalable, maintainable, and efficient,y understanding of system design principles helps me decompose complex problems into smaller, By applying system analysis techniques, I can identify user pain points and design user interfaces that are intuitive and user-friendly.',
        //     title: 'System Analysis and Design'),
      ]),
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
