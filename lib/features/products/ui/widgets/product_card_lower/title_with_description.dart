import 'package:elevate_task/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class TitleWithDescription extends StatelessWidget {
  const TitleWithDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.font14BlackW500,
          maxLines: 1,
        ),
        Text(
          description,
          style: AppStyle.font14BlackW500,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
