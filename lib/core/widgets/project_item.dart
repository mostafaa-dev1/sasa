import 'package:card_swiper/card_swiper.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/logic/cubit.dart';
import 'package:portfolio/core/theams/colors.dart';
import 'package:video_player/video_player.dart';

class ProjectItem extends StatefulWidget {
  const ProjectItem({
    super.key,
    required this.item,
  });
  final dynamic item;

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 500,
                        child: Swiper(
                          autoplay: true,
                          allowImplicitScrolling: true,
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
                                  image:
                                      AssetImage(widget.item['images'][index])),
                            );
                          },
                          itemCount: widget.item['images'].length,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(widget.item['title'],
                                style: TextStyle(
                                  color: AppColors.mainColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                )),
                            const Spacer(),
                            Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    overlayColor:
                                        const MaterialStatePropertyAll(
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
                        height: 30,
                      ),
                      Text(widget.item['description'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.sizeOf(context).height / 1.1,
                width: MediaQuery.sizeOf(context).width / 3,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Project Info',
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'Start Date: ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: widget.item['startDate'],
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ])),
                            const SizedBox(
                              height: 20,
                            ),
                            Text.rich(TextSpan(children: [
                              const TextSpan(
                                  text: 'End Date: ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )),
                              TextSpan(
                                  text: widget.item['endDate'],
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ])),
                          ]),
                      const Text(
                          'If you want to know more about this project, click the button below to get more information, I feel free to contact me',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.mainColor),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                        ),
                        child: const Text('Request to contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
