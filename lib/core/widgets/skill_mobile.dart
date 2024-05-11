import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/theams/colors.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({
    super.key,
    required this.text,
    required this.title,
    required this.image,
  });
  final String text;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.3),
              //     spreadRadius: 1,
              //     blurRadius: 7,
              //     offset: const Offset(0, 3), // changes position of shadow
              //   )
              // ]
            ),
            child: Column(children: [
              Image.asset(
                image,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(title,
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                  textAlign: TextAlign.justify,
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 10,
              ),
            ])));
  }
}
