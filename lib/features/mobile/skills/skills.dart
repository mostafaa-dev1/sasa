import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/logic/cubit.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:portfolio/core/widgets/skill_mobile.dart';

class SkillsMobile extends StatelessWidget {
  SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return Column(children: [
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
        height: 10,
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
          (index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SkillMobile(
                image: cubit.skillsImages[index],
                text: cubit.skillsText[index],
                title: cubit.skillsTitle[index],
              )),
        ),
      ),
    ]);
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
