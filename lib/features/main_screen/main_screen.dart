import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/features/desktop/main_desktop_screen/main_desktop_screen.dart';
import 'package:portfolio/features/mobile/main_mobile_screen/main_mobile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return const MainDesktopScreen();
      } else {
        return const MainMobileScreen();
      }
    });
  }
}
