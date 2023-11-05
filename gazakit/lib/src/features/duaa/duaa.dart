import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class DuaaPage extends StatefulWidget {
  const DuaaPage({super.key});

  @override
  State<DuaaPage> createState() => _DuaaPageState();
}

const green = Color.fromARGB(255, 78, 177, 81);

void copyToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Center(
        child: Text(
          'Text copied to clipboard',
          style: TextStyle(
              fontFamily: "product_sans",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      backgroundColor: green,
      duration: Duration(seconds: 1, milliseconds: 500),
    ),
  );
}

class _DuaaPageState extends State<DuaaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
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
              ),
            )
          ],
          title: const Text(
            'Duaa',
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
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyDuaaWidget(
                    text:
                        "اللهم قد انقطعت كل السبل إلا سبيلك، اللهم لا تمكّن الكفار من اجتثاث عبادك يا قوي يا جبار يا عزيز",
                    translation:
                        "O Allah, the people of Gaza have entrusted themselves to You, so do not leave them to themselves or to humanity, even for the blink of an eye.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "رَبَّنَآ أَفْرِغْ عَلَيْنَا صَبْراً وَثَبِّتْ أَقْدَامَنَا وَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ",
                    translation:
                        "Our Lord, pour upon us patience and plant firmly our feet and give us victory over the disbelieving people",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "اللهم قد انقطعت كل السبل إلا سبيلك، اللهم لا تمكّن الكفار من اجتثاث عبادك يا قوي يا جبار يا عزيز",
                    translation:
                        "O Allah, all paths are cut off except Your path. O Allah, do not allow the disbelievers to uproot Your servants. O Mighty, O Compeller, O Exalted One.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "اللهم آمِن رَوعات المسلمين، واستر عوراتِهم، وثبِّت أقدامَ المجاهدين في سبيلِك، وسدد رميَهم، وأمِدَّهم بمَدد من عندك",
                    translation:
                        "O Allah, protect the Muslims from fear, conceal their private parts, strengthen the feet of the fighters for Your cause, make their aim true, and provide them with support from You.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "اللهم ارفع الضر عن اهلنا في فلسطين اللهم انصرهم على أعدائهم وأعداء الإسلاماللهم ارحم شهداء فلسطين واجعلهم في عليين و اشف صدور اهلها وأنزل السكينة عليهم اللهم اجعلهم أمة واحدة تتكاتف في وجه العدو و تحقق النصر يا مجيب الدعاء",
                    translation:
                        "O Allah, relieve the suffering of our people in Palestine. O Allah, grant them victory over their enemies and the enemies of Islam. O Allah, have mercy on the martyrs of Palestine and place them in the highest ranks. Heal the hearts of their families and bestow tranquility upon them. O Allah, unite them as one nation, standing together against the enemy and achieving victory, O Answerer of prayers.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "اللهم احفظ أهل فلسطين والمسجد الأقصى من كيد الظالمين، وأيدهم بنصرك وقوتك.",
                    translation:
                        "O Allah, protect the people of Palestine and Al-Aqsa Mosque from the plots of the oppressors, and support them with Your victory and strength",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "اللهمَّ اجعل الأقصى محررًا من الاحتلال واجمع أهله تحت راية الإسلام والعدل",
                    translation:
                        "O Allah, make Al-Aqsa Mosque liberated from occupation, and gather its people under the banner of Islam and justice.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "اللهمَّ اجعل فلسطين بلدًا آمنًا ومزدهرًا، حيث يعيش أهله في سلام واستقرار.",
                    translation:
                        "O Allah, make Palestine a safe and prosperous land where its people can live in peace and stability.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "اللهم احفظ أهل فلسطين في غزة والقدس بعينك التي لا تنام، وارزقهم الثبات والقوة والتمكين وبارك في إيمانهم وصبرهم.",
                    translation:
                        "O Allah, safeguard the people of Gaza and Jerusalem with Your ever-watchful eye, grant them steadfastness, strength, and empowerment, and bless their faith and patience.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
                MyDuaaWidget(
                    text:
                        "نشهدك يا رب العالمين أن أعيننا تفيض من الدمع حزنًا وليس بيدنا حيلة.. اللهم انصر إخواننا في المسجد الأقصى، اللهم كن لهم ولا تكن عليهم، اللهم انتقم من أعدائهم واقذف الرعب في قلوبهم وردّ كيدهم في نحورهم، اللهم انصر المرابطين المستضعفين من أهل فلسطين",
                    translation:
                        "We bear witness, O Lord of the Worlds, that our eyes overflow with tears of sorrow, and we are helpless. O Allah, support our brothers in Al-Aqsa Mosque. O Allah, be with them and not against them. O Allah, avenge their enemies and strike fear into their hearts, and thwart their evil plans. O Allah, grant victory to the weak defenders of Palestine.",
                    isSeeMore: false),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}

class MyDuaaWidget extends StatefulWidget {
  const MyDuaaWidget({
    Key? key,
    required this.text,
    required this.isSeeMore,
    required this.translation,
  }) : super(key: key);

  final String text;
  final bool isSeeMore;
  final String translation;

  @override
  State<MyDuaaWidget> createState() => _MyDuaaWidgetState();
}

class _MyDuaaWidgetState extends State<MyDuaaWidget> {
  late bool expanded; // Declare expanded as an instance variable

  @override
  void initState() {
    super.initState();
    expanded =
        widget.isSeeMore; // Initialize expanded from the widget's property
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: green, width: 2),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  Material(
                    color: green,
                    borderRadius: BorderRadius.circular(500),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(500),
                      onTap: () async {
                        // await Share.share(widget.text);
                      },
                      child: Transform.rotate(
                        angle: 5.5,
                        child: const SizedBox(
                          height: 28,
                          width: 28,
                          child: Center(
                            child: Icon(
                              Icons.send_outlined,
                              color: Colors.white,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Material(
                    color: green,
                    borderRadius: BorderRadius.circular(500),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(500),
                      onTap: () {
                        copyToClipboard(context, widget.text);
                      },
                      child: const SizedBox(
                        height: 28,
                        width: 28,
                        child: Center(
                          child: Icon(
                            Icons.bookmark,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                width: 230,
                child: Text(
                  widget.text,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontFamily: "product_sans",
                    fontSize: 18,
                    color: Colors.black
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        if (expanded) // Use the expanded state here
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: const Text(
                  "Translation:",
                  style: TextStyle(
                      fontFamily: "product_sans",
                      color: Colors.black,
                      fontSize: 19),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.translation,
                  style: const TextStyle(
                      fontFamily: "product_sans",
                      color: Colors.black,
                      fontSize: 17),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    expanded = !expanded;
                  });
                },
                child: Container(
                  width: 130,
                  height: 32,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "See less",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "product_sans",
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        else
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  expanded = !expanded; // Toggle the expanded state
                });
              },
              child: Container(
                width: 130,
                height: 32,
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(500),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "product_sans",
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
       ],
    );
  }
}
