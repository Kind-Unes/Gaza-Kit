import 'package:flutter/material.dart';

import 'instructions.dart';


class AfterBombingInstructions extends StatefulWidget {
  const AfterBombingInstructions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstructionsState createState() => _InstructionsState();
}

// always outside the build method
TextEditingController textEditingController = TextEditingController();

const green = Color.fromARGB(255, 78, 177, 81);
const red = Color.fromARGB(255, 88, 8, 8);

class _InstructionsState extends State<AfterBombingInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: red,
        appBar: AppBar(
          titleSpacing: -10,
          toolbarHeight: 60,
          title: const Text(
            'After Bombing Instructions',
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
                    text: 'Kepp Safe',
                    index: 1,
                    icon: Icons.health_and_safety,
                  ),
                  InstructionWidget(
                    text: 'Check for injuries',
                    index: 2,
                    icon: Icons.personal_injury,
                  ),
                  InstructionWidget(
                    text: 'Administer first aid if possible',
                    index: 3,
                    icon: Icons.medical_services,
                  ),
                  InstructionWidget(
                    text: 'Listen for official guidance',
                    index: 4,
                    icon: Icons.hearing,
                  ),
                  InstructionWidget(
                    text: 'Avoid damaged or hazardous areas',
                    index: 5,
                    icon: Icons.warning,
                  ),
                  InstructionWidget(
                    text: 'Cooperate with authorities',
                    index: 6,
                    icon: Icons.group_remove_rounded,
                  ),
                  InstructionWidget(
                    text: 'Help Others',
                    index: 7,
                    icon: Icons.front_hand_sharp,
                  ),
                ],
              ),
            )));
  }
}
