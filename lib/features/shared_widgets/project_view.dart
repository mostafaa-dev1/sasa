import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/project_item.dart';
import 'package:portfolio/core/widgets/project_item_mobile.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key, required this.item});
  final dynamic item;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return ProjectItem(
          item: item,
        );
      } else {
        return ProjectItemMobile(
          item: item,
        );
      }
    });
  }
}
