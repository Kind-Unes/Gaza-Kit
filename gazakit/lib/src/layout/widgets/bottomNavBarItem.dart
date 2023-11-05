import 'package:flutter/material.dart';
import 'package:gazakit/src/utils/extentions.dart';

class BottomNavBarItem extends StatelessWidget {
  final Function updateIndex;
  final int index;
  final int currentIndex;
  final String filledImage;
  final String emptyImage;
  final String label;
  const BottomNavBarItem(
      {super.key,
      required this.filledImage,
      required this.emptyImage,
      required this.label,
      required this.index,
      required this.updateIndex,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => updateIndex(index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          currentIndex == index
              ? Image.asset(filledImage)
              : Image.asset(emptyImage),
           Text(
            label,
            style: context.textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
