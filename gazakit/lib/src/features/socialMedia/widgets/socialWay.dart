import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:gazakit/src/utils/extentions.dart';

class SocialWay extends StatelessWidget {
  final String text;

  final String route;
  const SocialWay({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(route),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 32,
                color: Colors.white,
                inset: true,
              ),
              BoxShadow(
                blurRadius: 60,
                color: Color.fromARGB(255, 40, 114, 42),
                inset: true,
              ),
            ],
            color: const Color.fromARGB(255, 33, 114, 36),
            borderRadius: BorderRadius.circular(20)),
        width: double.infinity,
        height: 120,
        child: Center(
          child: Text(
            text,
            style: context.textTheme.bodyLarge!.copyWith(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
