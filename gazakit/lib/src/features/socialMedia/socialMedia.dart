import 'package:flutter/material.dart';
import 'package:gazakit/src/features/socialMedia/widgets/socialWay.dart';
import 'package:gazakit/src/utils/extentions.dart';
import 'package:gazakit/src/utils/routes.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      appBar: AppBar(
         actions: [
          Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset("assets/palestine.png"))
        ],
        title: const Text(
          "Contribute",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Posting on Social Media",
          style: context.textTheme.bodyLarge!.copyWith(fontSize: 22),
        ),
        const SizedBox(
          height: 20,
        ),
        const SocialWay(
          route: AppRoutes.encoding,
          text: "Encoding Messages",
        ),
        const SocialWay(
          route: AppRoutes.comments,
          text: "Comments/Hashtags",
        ),
      ]),
    );
  }
}
