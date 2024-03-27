import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectItem extends StatefulWidget {
  const ProjectItem({super.key});

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width/1.3,
                height: MediaQuery.of(context).size.height/1.3,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ]
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'lib/assets/images/academe.jpg',
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    )
                                  ]
                              ),
                              child: Icon(
                                Icons.arrow_back,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    )
                                  ]
                              ),
                              child: Icon(
                                CupertinoIcons.heart,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
