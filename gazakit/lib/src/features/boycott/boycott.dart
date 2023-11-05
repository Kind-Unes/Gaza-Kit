import 'package:flutter/material.dart';
import 'package:gazakit/src/features/boycott/widgets/boycottTile.dart';
import 'package:gazakit/src/utils/colors.dart';
import 'package:gazakit/src/utils/extentions.dart';

class Boycott extends StatefulWidget {
  const Boycott({super.key});

  @override
  State<Boycott> createState() => _BoycottState();
}

class _BoycottState extends State<Boycott> {
  final List brands = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Boycott",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Boycott is a solution!",
              style: context.textTheme.bodyMedium!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => const BoycottTile(
                  brandName: "Oracle",
                  image: "assets/palestine.png",
                  color: AppColors.kPrimaryColor,
                ),
                itemCount: brands.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
