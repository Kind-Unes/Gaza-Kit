import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gazakit/src/features/contribute/view/widgets/contributionWay.dart';
import 'package:gazakit/src/utils/extentions.dart';
import 'package:gazakit/src/utils/routes.dart';

class ContributeView extends StatelessWidget {
  const ContributeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Contribute"), actions: [
          Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset("assets/palestine.png"))
        ]),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Text("How can you contribute?",style: context.textTheme.bodyLarge!.copyWith(fontSize: 22),),
            const ContributionWay(text: "Duaa", image: "assets/duaa.png",route: "/duaa",),
            const ContributionWay(text: "Boycott", image: "assets/boycott.png",route: AppRoutes.boycott,),
            const ContributionWay(text: "Posting on social media", image: "assets/social.png",route: AppRoutes.social,)
          ]),
        ),
      ),
    ); //
  }
}
