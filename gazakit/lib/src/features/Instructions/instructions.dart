import 'package:flutter/material.dart';
import 'package:gazakit/src/features/Instructions/after_bombing.dart';
import 'package:gazakit/src/features/Instructions/before_bombing.dart';
import 'package:gazakit/src/features/Instructions/cpr_instructions.dart';
import 'package:gazakit/src/features/Instructions/first_aid.dart';
import 'package:gazakit/src/features/Instructions/in_bombing.dart';

class InstructionsPage extends StatefulWidget {
  const InstructionsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InstructionsPageState createState() => _InstructionsPageState();
}

// always outside the build method
TextEditingController textEditingController = TextEditingController();

const green = Color.fromARGB(255, 78, 177, 81);
const red = Color.fromARGB(255, 88, 8, 8);

class _InstructionsPageState extends State<InstructionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: red,
        appBar: AppBar(
          toolbarHeight: 60,
          actions: [
            Transform.translate(
              offset: const Offset(-20, 5),
              child: const Image(
                width: 55,
                image: AssetImage("assets/palestine.png"),
              ),
            )
          ],
          title: const Text(
            'Instructions',
            style: TextStyle(
                fontFamily: "product_sans",
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w400),
          ),
          backgroundColor: red,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Column(
                  children: [
                    InstructionTile(
                      text: 'First Aid',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FirstAidInstructions(),
                          ),
                        );
                      },
                      icon: Icons.medical_services_sharp,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InstructionTile(
                      text: 'Before Bombing',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const BeforeBombingInstructions(),
                          ),
                        );
                      },
                      icon: Icons.propane_tank_rounded,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InstructionTile(
                      text: 'In Bombing',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const InBombingInstructions(),
                          ),
                        );
                      },
                      icon: Icons.house_siding_outlined,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InstructionTile(
                      text: 'After Bombing',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const AfterBombingInstructions(),
                          ),
                        );
                      },
                      icon: Icons.fireplace_outlined,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InstructionTile(
                      text: 'Cardio-Pulmonary Resuscitation',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CPRInstructions(),
                          ),
                        );
                      },
                      icon: Icons.co_present_outlined,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InstructionTile(
                      text: 'Phosphorous Bombing',
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CPRInstructions(),
                          ),
                        );
                      },
                      icon: Icons.no_adult_content_sharp,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              )),
        ));
  }
}

class InstructionWidget extends StatelessWidget {
  const InstructionWidget({
    Key? key,
    required this.text,
    required this.index,
    required this.icon,
  }) : super(key: key);

  final String text;
  final int index;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Scroll here",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "product_sans",
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: Colors.white,
            )
          ],
        ),
        const Divider(
          color: Colors.white,
          thickness: 1,
          endIndent: 20,
          indent: 20,
        ),
        const SizedBox(
          height: 70,
        ),
        Text(
          index.toString(),
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "product_sans",
              fontSize: 25,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 70,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "product_sans",
              fontSize: 25,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 25,
        ),
        Icon(
          icon,
          size: 45,
          color: Colors.white,
        ),
        const Spacer(),
        const Divider(
          color: Colors.white,
          thickness: 1,
          indent: 20,
          endIndent: 25,
        ),
        const SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}

class InstructionTile extends StatelessWidget {
  const InstructionTile({
    super.key,
    required this.text,
    required this.onTap,
    required this.icon,
  });

  final IconData icon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(
              thickness: 1,
              color: Colors.white,
              endIndent: 25,
              indent: 25,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "product_sans",
                  fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
              endIndent: 25,
              indent: 25,
            ),
          ],
        ),
      ),
    );
  }
}
