import 'package:flutter/material.dart';

class BotcottPage extends StatefulWidget {
  const BotcottPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BotcottPageState createState() => _BotcottPageState();
}

// always outside the build method
TextEditingController textEditingController = TextEditingController();

const green = Color.fromARGB(255, 78, 177, 81);
const red = Color.fromARGB(255, 88, 8, 8);

class _BotcottPageState extends State<BotcottPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 60,
          actions: [
            Transform.translate(
                offset: const Offset(-20, 5),
                child: const Image(
                  width: 55,
                  image: AssetImage("assets/palestine.png"),
                ))
          ],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            iconSize: 20,
            color: Colors.black,
            onPressed: () {},
          ),
          title: const Text(
            'Boycott',
            style: TextStyle(
                fontFamily: "product_sans",
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: const Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Boycott is a solution!',
                  style: TextStyle(
                      fontFamily: "product_sans",
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 25,
                ),
                //! Here u add a ListView.builder OR generate a list of widgets
                MyBrandTile(
                  text: "PurePali",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "LinkedIn",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "PALIDRIP",
                  url: "",
                  isSupportingPalastine: true,
                ),

                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "nnbynn",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Zoom",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "HP",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Darzah Designs",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Hirbawi",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "AmericanEagle",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Deerah",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Nol Collective",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Watan",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Meera Adnan",
                  url: "",
                  isSupportingPalastine: true,
                ),
                MyBrandTile(
                  text: "TNT",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 15,
                ),

                MyBrandTile(
                  text: "Holy Land Boutique",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),

                MyBrandTile(
                  text: "Ayadi",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Balady Stitch",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Sunbula",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Fyrouzi",
                  url: "",
                  isSupportingPalastine: true,
                ),
                SizedBox(
                  height: 15,
                ),

                MyBrandTile(
                  text: "MacDavid",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Tara",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Max Brenner",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Krembo",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),

                MyBrandTile(
                  text: "Meta",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Pepsi",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "StarBucks",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Fox ",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "YVEL",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Microsoft",
                  url: "",
                  isSupportingPalastine: false,
                ),

                SizedBox(
                  height: 15,
                ),

                MyBrandTile(
                  text: "American Express",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Tesla",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Warner Bros",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Zoom",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Google",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "HubSpot",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Intel",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "IBM",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "Insight",
                  url: "",
                  isSupportingPalastine: false,
                ),
                SizedBox(
                  height: 15,
                ),
                MyBrandTile(
                  text: "HP",
                  url: "",
                  isSupportingPalastine: false,
                ),
              ],
            ),
          ),
        ));
  }
}

class MyBrandTile extends StatelessWidget {
  const MyBrandTile({
    super.key,
    required this.text,
    required this.url,
    required this.isSupportingPalastine,
  });

  final String text;
  final String url;
  final bool isSupportingPalastine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 22),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
          color: isSupportingPalastine ? green : red,
          borderRadius: BorderRadius.circular(25)),
      child: Stack(children: [
        Positioned(
          top: 8,
          left: 25,
          child: CircleAvatar(
            radius: 31,
            backgroundColor: Colors.white,
            child: Icon(
              isSupportingPalastine
                  ? Icons.check_circle_outline
                  : Icons.cancel_outlined,
              color: isSupportingPalastine ? green : red,
              size: 50,
            ),
          ),
        ),
        Positioned(
          top: 18,
          left: 100,
          child: Text(text,
              maxLines: 2,
              style: const TextStyle(
                  color: Colors.white,
                  overflow: TextOverflow.clip,
                  fontFamily: "product_sans",
                  fontSize: 33)),
        ),
      ]),
    );
  }
}