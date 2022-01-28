import 'package:flutter/material.dart';
import 'package:inter_clone/shared/app_images.dart';

class InterAppBar extends StatelessWidget {
  const InterAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(image: AppImages.INTER_LOGO, height: 25),
        Row(
          children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(width: 25),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
        ],)
    ],);
  }
}
