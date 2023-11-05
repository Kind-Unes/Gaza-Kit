import 'package:flutter/material.dart';
import 'package:gazakit/src/utils/colors.dart';
import 'package:gazakit/src/utils/extentions.dart';
import 'package:gazakit/src/utils/routes.dart';

import '../../Instructions/instructions.dart';
import '../../historical/historical.dart';
import '../../news/news.dart';
import '../../statistics/statistics.dart';
import 'widgets/mytile.dart';

class InformMeView extends StatelessWidget {
  const InformMeView({super.key});

  @override
  Widget build(BuildContext context) {
    const green = Color.fromARGB(255, 78, 177, 81);
    const red = Color.fromARGB(255, 88, 8, 8);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text(
              "Inform me",
              style: context.textTheme.bodyMedium!
                  .copyWith(color: AppColors.kBlack),
            ),
            actions: [
              Container(
                  margin: const EdgeInsets.all(10),
                  height: 60,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Image.asset("assets/palestine.png"))
            ]),

        //! Here fetch the data + add a pageView :D
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 45,
                      child: Transform.translate(
                        offset: const Offset(0, 0),
                        child: const TextField(
                          cursorColor: Colors.green,
                          maxLines: 1,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: "product_sans",
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            hintText: "search...",
                            hintStyle: TextStyle(
                              fontFamily: "product_sans",
                              color: Color.fromARGB(106, 56, 171, 60),
                              fontSize: 18,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 7,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Categories:',
                  style: TextStyle(
                    fontFamily: "product_sans",
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    MyGridTile(
                      text: "Surviving Instructions",
                      color: red,
                      textColor: Colors.white,
                      onTap: () {
                        context.pushNamed(AppRoutes.instructions);
                      },
                      borderColor: red,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MyGridTile(
                      text: "Social Media account supporting Gaza",
                      color: Colors.white,
                      textColor: green,
                      onTap: () {
                        context.pushNamed(AppRoutes.accounts);
                      },
                      borderColor: green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    MyGridTile(
                      text: "Historical informations",
                      color: Colors.white,
                      textColor: red,
                      onTap: () {
                        context.pushNamed(AppRoutes.historical);
                      },
                      borderColor: red,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MyGridTile(
                      text: "Statistics",
                      color: green,
                      textColor: Colors.white,
                      onTap: () {
                        context.pushNamed(AppRoutes.stats);
                      },
                      borderColor: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Highlights",
                  style: TextStyle(
                      fontFamily: "product_sans",
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const News(
                                  title:
                                      "Bassem youssef and Piers Morgan interview",
                                  date: "Sunday 19 October 2023",
                                  content:
                                      "British journalist Piers Morgan has been known to make controversial statements over the years but he is currently considered the best interviewer in the world. An honor that was once bestowed upon the likes of Larry King, Howard Stern, and even Jordi Evole in Spain. Since the war in Gaza broke out between Israel and Hamas, Morgan has made it his mission to invite people from both sides of the conflict to give their views on a matter that is as old as it is complicated. Two weeks ago, Morgan interviewed Egyptian comedian Bassem Youssef, who became famous in the West due to his close friendship with fellow political satirist Jon Stewart. That interview amassed 20 million views on Youtube alone over the last two",
                                  imageURL: "assets/bassem_youcef.jpg",
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 3),
                            width: 120,
                            height: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              height: 105,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: const Image(
                                  image: AssetImage("assets/bassem_youcef.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const News(
                                  title:
                                      "A Hole Increase of Deaths in GAZA After Isreal Air Attack",
                                  date: "Sunday 04 Novermber 2023",
                                  content:
                                      "An Israeli attack on the densely-populated Jabalia refugee camp in Gaza killed at least 50 people and injured many more, with search operations continuing.The bombing has sparked outrage across the Arab world and has been An Israeli attack on the densely-populated Jabalia refugee camp in Gaza killed at least 50 people and injured many more, with search operations continuing.The bombing has sparked outrage across the Arab world and has been An Israeli attack on the densely-populated Jabalia refugee camp in Gaza killed at least 50 people and injured many more, with search operations continuing.The bombing has sparked outrage across the Arab world and has been",
                                  imageURL:
                                      "assets/asset2.webp",
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 3),
                            width: 120,
                            height: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Container(
                              height: 105,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: const Image(
                                  image: AssetImage(
                                      "assets/asset1.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const News(
                                  title:
                                      "Israel-Gaza war: US House rejects effort to censure Rashida Tlaib",
                                  date: "Thursday 02 November 2023",
                                  content:
                                      "The so-called censure resolution against Tlaib accused the Michigan representative of “anti-Semitic activity, sympathising with terrorist organisations and leading an insurrection at the United States Capitol Complex”, referring to a sit-in by Jewish activists inside Congress to demand a ceasefire in Gaza.The so-called censure resolution against Tlaib accused the Michigan representative of “anti-Semitic activity, sympathising with terrorist organisations and leading an insurrection at the United States Capitol Complex”, referring to a sit-in by Jewish activists inside Congress to demand a ceasefire in Gaza.The so-called censure resolution against Tlaib accused the Michigan representative of “anti-Semitic activity, sympathising with terrorist organisations and leading an insurrection at the United States Capitol Complex”, referring to a sit-in by Jewish activists inside Congress to demand a ceasefire in Gaza.The so-called censure resolution against Tlaib accused the Michigan representative of “anti-Semitic activity, sympathising with terrorist organisations and leading an insurrection at the United States Capitol Complex”, referring to a sit-in by Jewish activists inside Congress to demand a ceasefire in Gaza.The so-called censure resolution against Tlaib accused the Michigan representative of “anti-Semitic activity, sympathising with terrorist organisations and leading an insurrection at the United States Capitol Complex”, referring to a sit-in by Jewish activists inside Congress to demand a ceasefire in Gaza.",
                                  imageURL:
                                      "assets/asset3.webp",
                                ),
                              ),
                            );
                          },
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 3),
                              width: 120,
                              height: 120,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                height: 105,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/asset3.webp"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
