import 'package:card_swiper/card_swiper.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/logic/cubit.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:video_player/video_player.dart';

class ProjectItemMobile extends StatefulWidget {
  const ProjectItemMobile({
    super.key,
    required this.item,
  });
  final dynamic item;

  @override
  State<ProjectItemMobile> createState() => _ProjectItemMobileState();
}

class _ProjectItemMobileState extends State<ProjectItemMobile> {
  @override
  late FlickManager flickManager;
  @override
  // void initState() {
  //   super.initState();
  //   flickManager = FlickManager(
  //       videoPlayerController: VideoPlayerController.asset(
  //     'lib/assets/videos/academe.mp4',
  //   ));
  // }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250,
                  child: Swiper(
                    loop: true,
                    autoplay: true,
                    outer: true,
                    layout: SwiperLayout.DEFAULT,
                    pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            activeColor: AppColors.mainColor,
                            color: Colors.grey[300],
                            size: 10,
                            activeSize: 12)),
                    autoplayDisableOnInteraction: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(widget.item['images'][index])),
                      );
                    },
                    itemCount: widget.item['images'].length,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(widget.item['title'],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  const Spacer(),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          overlayColor: const MaterialStatePropertyAll(
                              Colors.transparent),
                          child: const Icon(
                            CupertinoIcons.heart,
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 27,
                          color: Colors.grey[300],
                        ),
                        const Text('12',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Project Info',
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text.rich(TextSpan(children: [
                          const TextSpan(
                              text: 'Start Date: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: widget.item['startDate'],
                              style: TextStyle(
                                  color: AppColors.mainColor, fontSize: 15)),
                        ])),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(TextSpan(children: [
                          const TextSpan(
                              text: 'End Date: ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: widget.item['endDate'],
                              style: TextStyle(
                                  color: AppColors.mainColor, fontSize: 15)),
                        ])),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                            'If you want to know more about this project, click the button below to get more information, I feel free to contact me',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.mainColor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                            ),
                            child: const Text('Request to contact',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(widget.item['description'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
        ));
  }
}
