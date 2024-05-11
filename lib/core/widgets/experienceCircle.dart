import 'package:flutter/material.dart';
import 'package:portfolio/core/theams/colors.dart';

class Experience extends StatelessWidget {
  const Experience(
      {super.key,
      required this.years,
      required this.text,
      required this.width,
      required this.height,
      required this.textSize,
      required this.numberSize});
  final int years;
  final String text;
  final double width;
  final double height;
  final double textSize;
  final double numberSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.mainColor.withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(years.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: numberSize,
                      fontWeight: FontWeight.bold,
                    )),
                Text(text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
