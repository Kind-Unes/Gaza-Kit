import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_svg/svg.dart';
import 'package:gazakit/src/utils/extentions.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
class ContributionWay extends StatelessWidget {
  final String text;
  final String image;
  final String route;
  const ContributionWay({super.key,required this.text,required this.image,required this.route});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => context.pushNamed(route),
        child: Container(
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
         boxShadow: const  [
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
              color: const Color.fromARGB(255, 33, 114, 36), borderRadius: BorderRadius.circular(20)),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: context.textTheme.bodyLarge!.copyWith(fontSize: 17),
              ),
              Image.asset(image),
            ],
          ),
        ),
      ),
    );
  }
}
