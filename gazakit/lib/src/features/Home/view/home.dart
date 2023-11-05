import 'package:flutter/material.dart';
import 'package:gazakit/src/utils/extentions.dart';
import '../../../utils/strings.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Padding(
              padding: const EdgeInsets.only(top: 130, left: 20, bottom: 20),
              child: Text(kWelcome, style: context.textTheme.bodyLarge),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                kPalestine,
                style: context.textTheme.bodyMedium,
                textAlign: TextAlign.right,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 105, 35, 30)),
              child: const Text(
                kDuaaToday,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
      ],
    );
  }
}