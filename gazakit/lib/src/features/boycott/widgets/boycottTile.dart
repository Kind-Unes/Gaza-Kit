import 'package:flutter/material.dart';
import 'package:gazakit/src/utils/extentions.dart';

class BoycottTile extends StatelessWidget {
  final String brandName;
  final String image;
  final Color color;
  const BoycottTile(
      {super.key,
      required this.brandName,
      required this.image,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 30,
            child: Image.asset(image),
          ),
          const Spacer(),
          Text(
            brandName,
            style: context.textTheme.bodyMedium!.copyWith(color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
