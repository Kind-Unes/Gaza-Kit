import 'package:flutter/material.dart';

import 'instructions.dart';


class CPRInstructions extends StatefulWidget {
  const CPRInstructions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstructionsState createState() => _InstructionsState();
}

// always outside the build method
TextEditingController textEditingController = TextEditingController();

const green = Color.fromARGB(255, 78, 177, 81);
const red = Color.fromARGB(255, 88, 8, 8);

class _InstructionsState extends State<CPRInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: red,
        appBar: AppBar(
          toolbarHeight: 60,
          titleSpacing: -10,
          title: const Text(
            'CPR Instructions',
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
                    text: 'Check for safety',
                    index: 1,
                    icon: Icons.health_and_safety,
                  ),
                  InstructionWidget(
                    text: 'Call for help',
                    index: 2,
                    icon: Icons.front_hand,
                  ),
                  InstructionWidget(
                    text: 'Check for airway',
                    index: 3,
                    icon: Icons.air,
                  ),
                  InstructionWidget(
                    text: 'Immobilize injuries',
                    index: 4,
                    icon: Icons.airline_seat_flat_angled,
                  ),
                  InstructionWidget(
                    text: 'Perform chest compressions',
                    index: 5,
                    icon: Icons.sign_language,
                  ),
                  InstructionWidget(
                    text: 'Perform rescue breaths',
                    index: 6,
                    icon: Icons.face_5,
                  ),
                  InstructionWidget(
                    text: 'Reapeat the process',
                    index: 7,
                    icon: Icons.repeat,
                  ),
                ],
              ),
            )));
  }
}
