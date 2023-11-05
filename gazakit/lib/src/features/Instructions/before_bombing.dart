import 'package:flutter/material.dart';

import 'instructions.dart';


class BeforeBombingInstructions extends StatefulWidget {
  const BeforeBombingInstructions({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstructionsState createState() => _InstructionsState();
}

// always outside the build method
TextEditingController textEditingController = TextEditingController();

const green = Color.fromARGB(255, 78, 177, 81);
const red = Color.fromARGB(255, 88, 8, 8);

class _InstructionsState extends State<BeforeBombingInstructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: red,
        appBar: AppBar(
          toolbarHeight: 60,
          titleSpacing: -10,
          title: const Text(
            'Before Bombing Instructions',
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
                    text: 'Prepare a Shelter',
                    index: 1,
                    icon: Icons.food_bank,
                  ),
                  InstructionWidget(
                    text: 'Gather Essential Supplies',
                    index: 2,
                    icon: Icons.inventory,
                  ),
                  InstructionWidget(
                    text: 'Create a communication plan',
                    index: 3,
                    icon: Icons.menu_book,
                  ),
                  InstructionWidget(
                    text: 'Stay Informed about alers',
                    index: 4,
                    icon: Icons.info,
                  ),
                  InstructionWidget(
                    text: 'Get the emergency numbers',
                    index: 5,
                    icon: Icons.phone,
                  ),
                  InstructionWidget(
                    text: 'Prepare yourself mentally',
                    index: 6,
                    icon: Icons.sentiment_satisfied_alt_outlined,
                  ),
                  InstructionWidget(
                    text: 'Have an emeregency door',
                    index: 7,
                    icon: Icons.exit_to_app,
                  ),
                  InstructionWidget(
                    text: 'Advice the children',
                    index: 8,
                    icon: Icons.child_care,
                  ),
                ],
              ),
            )));
  }
}
