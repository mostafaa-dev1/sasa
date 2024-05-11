import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/theams/colors.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon(
      {super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: FaIcon(
          icon,
          color: AppColors.mainColor,
          size: 25,
        ));
  }
}
