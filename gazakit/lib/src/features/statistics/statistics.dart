import 'package:flutter/material.dart';
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

const green = Color.fromARGB(255, 78, 177, 81);

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
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
            'Statistics',
            style: TextStyle(
                fontFamily: "product_sans",
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),

        //! Here fetch the data + add a pageView :D
        body: const SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'As of : 11/04/2023',
                      style: TextStyle(
                          fontFamily: "product_sans",
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color.fromARGB(255, 49, 124, 51),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Total Confirmed Martyrs & injuries:',
                    style: TextStyle(
                        fontFamily: "product_sans",
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  StatisticsTile(stat: 9400, category: "martyrs"),
                  SizedBox(
                    height: 10,
                  ),
                  StatisticsTile(stat: 3900, category: "children"),
                  SizedBox(
                    height: 10,
                  ),
                  StatisticsTile(stat: 4843, category: "women"),
                  SizedBox(
                    height: 10,
                  ),
                  StatisticsTile(stat: 25797, category: "injuries"),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 1,
                    color: Color.fromARGB(255, 49, 124, 51),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Others:',
                    style: TextStyle(
                        fontFamily: "product_sans",
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  StatisticsTile(stat: 1084, category: "bombs"),
                  SizedBox(
                    height: 10,
                  ),
                  StatisticsTile(stat: 1500000, category: "Displaced"),
                  SizedBox(
                    height: 10,
                  ),
                  StatisticsTile(
                      stat: 2400, category: "Detainees from west bank"),
                  SizedBox(
                    height: 10,
                  ),
                  StatisticsTile(
                    category: "Damaged housing units",
                    stat: 21200,
                  ),
                ],
              )),
        ));
  }
}

class StatisticsTile extends StatelessWidget {
  const StatisticsTile({
    super.key,
    required this.stat,
    required this.category,
  });
  final int stat;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration:
          BoxDecoration(color: green, borderRadius: BorderRadius.circular(200)),
      child: Text(
        'A total number of $stat $category',
        style: const TextStyle(
            fontFamily: "product_sans",
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
