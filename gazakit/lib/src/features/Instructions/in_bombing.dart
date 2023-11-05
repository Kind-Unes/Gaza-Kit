import 'package:flutter/material.dart';

import 'instructions.dart';


class InBombingInstructions extends StatefulWidget {
  const InBombingInstructions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstructionsState createState() => _InstructionsState();
}

// always outside the build method
TextEditingController textEditingController = TextEditingController();

const green = Color.fromARGB(255, 78, 177, 81);
const red = Color.fromARGB(255, 88, 8, 8);

class _InstructionsState extends State<InBombingInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: red,
        appBar: AppBar(
          toolbarHeight: 60,
          titleSpacing: -10,
          title: const Text(
            'In Bombing Instructions',
            style: TextStyle(
                fontFamily: "product_sans",
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w400),
          ),
          backgroundColor: red,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(25),
            child: SizedBox(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: const [
                  InstructionWidget(
                    text: 'Keep Low',
                    index: 1,
                    icon: Icons.directions_walk,
                  ),
                  InstructionWidget(
                    text: 'Cover your head',
                    index: 2,
                    icon: Icons.face,
                  ),
                  InstructionWidget(
                    text: 'Find a Shelter',
                    index: 3,
                    icon: Icons.apartment,
                  ),
                  InstructionWidget(
                    text: 'Stay away from windows',
                    index: 4,
                    icon: Icons.window,
                  ),
                  InstructionWidget(
                    text: 'Stay Calm',
                    index: 5,
                    icon: Icons.sentiment_satisfied,
                  ),
                  InstructionWidget(
                    text: 'Leave the building',
                    index: 6,
                    icon: Icons.exit_to_app_outlined,
                  ),
                  InstructionWidget(
                    text: 'Help Others Leaving',
                    index: 7,
                    icon: Icons.groups,
                  ),
                  InstructionWidget(
                    text: 'Call For Help',
                    index: 8,
                    icon: Icons.front_hand,
                  ),
                ],
              ),
            )));
  }
}
