import 'package:flutter/material.dart';
import 'package:portfolio/features/shared_widgets/about.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:portfolio/features/shared_widgets/degrees.dart';
import 'package:portfolio/features/desktop/home/home.dart';
import 'package:portfolio/features/shared_widgets/projects.dart';
import 'package:portfolio/features/shared_widgets/services.dart';
import 'package:portfolio/features/desktop/skills/skills.dart';

class MainDesktopScreen extends StatefulWidget {
  const MainDesktopScreen({super.key});

  @override
  State<MainDesktopScreen> createState() => _MainDesktopScreenState();
}

List<String> headerList = [
  'Home',
  'About',
  'Skills',
  'Projects',
  'Degrees',
  'Services'
];
int currentIndex = 0;
var scrollController = ScrollController();
void ScrollTo(GlobalKey key) {
  Scrollable.ensureVisible(key.currentContext!,
      duration: const Duration(seconds: 1), curve: Curves.easeOut);
}

class _MainDesktopScreenState extends State<MainDesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leadingWidth: 300,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 50),
            child:
                Text(currentIndex == 0 ? 'Portfolio' : headerList[currentIndex],
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'font1',
                    )),
          ),
          title: SizedBox(
            height: 30,
            child: ListView.separated(
                shrinkWrap: true,
                primary: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    overlayColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                    onTap: () {
                      setState(() {
                        currentIndex = index;

                        if (index == 3) {
                          scrollController.animateTo(
                              (index + 0.5) *
                                  MediaQuery.of(context).size.height,
                              duration: const Duration(seconds: 2),
                              curve: Curves.easeInOut);
                        } else if (index == 4) {
                          scrollController.animateTo(
                              (index + 0.2) *
                                  MediaQuery.of(context).size.height,
                              duration: const Duration(seconds: 2),
                              curve: Curves.easeInOut);
                        } else {
                          scrollController.animateTo(
                              index * MediaQuery.of(context).size.height,
                              duration: const Duration(seconds: 2),
                              curve: Curves.easeInOut);
                        }
                      });
                    },
                    child: Column(children: [
                      Text(headerList[index],
                          style: TextStyle(
                            color: index == currentIndex
                                ? AppColors.mainColor
                                : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      index == currentIndex
                          ? Container(
                              height: 3,
                              width: 40,
                              color: AppColors.mainColor,
                            )
                          : const SizedBox()
                    ]),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      width: 50,
                    ),
                itemCount: headerList.length),
          )),
      body: SingleChildScrollView(
        controller: scrollController,
        child: const Column(
          children: [
            Home(),
            About(),
            Skills(),
            Degrees(),
            Projects(),
            Services()
          ],
        ),
      ),
    );
  }
}
