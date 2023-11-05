import 'package:flutter/material.dart';

class HistoricalInformationsPage extends StatefulWidget {
  const HistoricalInformationsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HistoricalInformationsPageState createState() =>
      _HistoricalInformationsPageState();
}

// always outside the build method
TextEditingController textEditingController = TextEditingController();

const green = Color.fromARGB(255, 78, 177, 81);
const red = Color.fromARGB(255, 88, 8, 8);

const grey = Colors.grey;

class _HistoricalInformationsPageState
    extends State<HistoricalInformationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          toolbarHeight: 60,
          actions: [
            Transform.translate(
                offset: const Offset(-20, 5),
                child: const Image(
                  width: 55,
                  image: AssetImage("assets/palestine.png"),
                ))
          ],
          title: const Text(
            'Historical Informations\n(Beta)',
            style: TextStyle(
                fontFamily: "product_sans",
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MyHistoricalTip(
                title: 'When was the State of Israel established? ',
                content: 'May 14, 1948',
              ),
              const Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      color: Colors.black54,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              const MyHistoricalTip(
                title:
                    'How Israel Applies the Absentees’ Property Law to Confiscate Palestinian Property in Jerusalem?',
                content:
                    'Israel uses the 1950 Absentees’ Property Law and several amendments to it to confiscate Palestinian property across East Jerusalem and give it to Jewish settlers.',
              ),
              const Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      color: Colors.black54,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              const MyHistoricalTip(
                title:
                    'Land Registration in Jerusalem is a “Grand Land Theft” from Palestinians—Ir Amim’s Amy Cohen',
                content:
                    'Ir Amim and Bimkom’s June 2023 report, The Grand Land Theft, reveals Israel’s intentions behind undertaking the settlement of land title in East Jerusalem.',
              ),
              const Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      color: Colors.black54,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              const MyHistoricalTip(
                title:
                    'Where Is Jerusalem? The Uncertain and Unfixed Boundaries of the City',
                content:
                    'Where is Jerusalem? The answer is a lot more complex and unclear than you might think.',
              ),
              const Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      color: Colors.black54,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              const MyHistoricalTip(
                title: 'Israeli Municipal “Unified” Jerusalem (1967–Present)',
                content:
                    'An interactive map of Jerusalem (East and West) from 1967 until today. ',
              ),
              const Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      color: Colors.black54,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              const MyHistoricalTip(
                title: 'Checkpoints around Jerusalem',
                content:
                    'An interactive map of the checkpoints around Jerusalem that control Palestinian access to the cityUse the magnifier box in the bottom left-hand corner to view the map full screen. Zoom in to view the localities and checkpoints names. Click on the Legend in the upper right to view and manipulate the various map layers',
              ),
              const Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      color: Colors.black54,
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              const MyHistoricalTip(
                title:
                    'A Jerusalem Expert Explains Israel’s Tsunami of Settlement Plans in East Jerusalem',
                content:
                    'Israel is rapidly advancing settlement plans across East Jerusalem; 2023 seems sure to be a record-breaking year.',
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      red), // Change the background color
                  minimumSize: MaterialStateProperty.all(
                      const Size(350, 40)), // Change the width and height
                ),
                child: const Text(
                  "Know More",
                  style: TextStyle(fontFamily: "product_sans", fontSize: 19),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}

class MyHistoricalTip extends StatelessWidget {
  const MyHistoricalTip({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: grey, width: 3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: "product_sans",
                            color: red,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      const Divider(
                        endIndent: 35,
                        indent: 35,
                        color: grey,
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        content,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: "product_sans",
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
              )
            ],
          ),
        ));
  }
}
