import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/theams/colors.dart';

class RightSkill extends StatelessWidget {
  const RightSkill({
    super.key,
    required this.image,
    required this.text,
    required this.title,
  });
  final String image;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            width: MediaQuery.of(context).size.width / 1.8,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.3),
              //     spreadRadius: 1,
              //     blurRadius: 7,
              //     offset: const Offset(0, 3), // changes position of shadow
              //   ),
              // ],
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
                          Text(title,
                              style: TextStyle(
                                fontSize: 30,
                                color: AppColors.mainColor,
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(text,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    image,
                    height: 200,
                  ),
                ]))
      ],
    );
  }
}
