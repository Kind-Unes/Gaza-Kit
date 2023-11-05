import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:gazakit/src/features/Home/view/home.dart';
import 'package:gazakit/src/features/informMe/view/informMe.dart';
import 'package:gazakit/src/layout/widgets/bottomNavBarItem.dart';
import 'package:gazakit/src/utils/extentions.dart';
import 'package:gazakit/src/utils/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import '../features/contribute/view/contribute.dart';
import '../utils/assets.dart';
import '../utils/notif.dart';
import '../utils/strings.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dontForget(); // just keepin the code 
  }

  void dontForget() async {
    Position postiton = await LocationService().getCurrentPosition();
    final myCoordinates = Coordinates(
      postiton.latitude,
      postiton.longitude,
    ); // Replace with your own location lat, lng.
    final params = CalculationMethod.karachi.getParameters();
    params.madhab = Madhab.hanafi;
    final prayerTimes = PrayerTimes.today(myCoordinates, params);
    final prayers = [
      prayerTimes.fajr,
      prayerTimes.dhuhr,
      prayerTimes.asr,
      prayerTimes.maghrib,
      prayerTimes.isha,
    ];
    if (prayers.contains(DateTime.now())) {
      NotificationService().scheduleNotification(
        scheduledNotificationDateTime:
            DateTime.now().add(const Duration(seconds: 12)),
        body: "DONT FORGET TO PRAY FOR PALESTINE",
        title: "SAVE PALESTINE",
      );
    }
  }

  void updateIndex(int index_) {
    setState(() {
      index = index_;
    });

  }

  final homeWidgets = [
    const Home(),
    const ContributeView(),
    const InformMeView(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: index == 1
          ? const Color.fromARGB(255, 105, 35, 30)
          : index==2? Colors.white:null,
      body: Container(
        decoration: BoxDecoration(
          image: index == 0
              ? const DecorationImage(
                  image: AssetImage(kBackgroundImage),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: homeWidgets[index],
            ),
            // ElevatedButton(
            //     onPressed: () async {

            //     },
            //     child: const Text("Press me")),
            Container(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 6, left: 35, right: 30),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavBarItem(
                    filledImage: "assets/home.png",
                    emptyImage: "assets/homee.png",
                    label: "Home",
                    index: 0,
                    updateIndex: updateIndex,
                    currentIndex: index,
                  ),
                  BottomNavBarItem(
                    filledImage: "assets/contribute-full.png",
                    emptyImage: "assets/contribute.png",
                    label: "Contribute",
                    index: 1,
                    updateIndex: updateIndex,
                    currentIndex: index,
                  ),
                  BottomNavBarItem(
                    filledImage: "assets/discover-full.png",
                    emptyImage: "assets/inform.png",
                    label: "Discover",
                    index: 2,
                    updateIndex: updateIndex,
                    currentIndex: index,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
