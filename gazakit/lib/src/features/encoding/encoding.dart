import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gazakit/src/utils/extentions.dart';

class Encoding extends StatefulWidget {
  const Encoding({super.key});

  @override
  State<Encoding> createState() => _EncodingState();
}

class _EncodingState extends State<Encoding> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();

  String inputText = "";

  String resultText = "";

  Map<String, String> wordReplacements = {
    'غزة': 'غـ.ـ.ـزة',
    'الشهيدة': 'الش8يدة',
    'الشهيد': 'الش8يد',
    'شهيد': 'ش8يد',
    'شهداء': 'الش8داء',
    'استشهاد': 'استش8اد',
    'صهيون': 'ص8يون',
    'الصهيون': 'الص8يون',
    'الصهاينة': 'الص8اينة',
    'فلسطين': 'فلس.ـطـ.ين',
    'إسرائيل': 'إسرائ.ـ.ـيل',
    'القدس': 'الـ.ق.ـدس',
    'حرب': 'ح.ـرب',
    'احتلال': 'احـ.ـتـ.ـلال',
    'مستوطنة': 'مستوط.ـ.ـنة',
    'قصف': 'قـ.ص.ـف',
    'ارهراب': 'ار8هراب',
    'استهداف': 'است8داف',
  };

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
        )),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 1, milliseconds: 500),
      ),
    );
  }

  void processText() {
    String text = textEditingController.text;
    // Split the input text into words
    List<String> words = text.split(' ');

    // Replace specific words
    for (int i = 0; i < words.length; i++) {
      if (wordReplacements.containsKey(words[i])) {
        words[i] = wordReplacements[words[i]]!;
      }
    }

    // Join the words back into a single string
    resultText = words.join(' ');
    textEditingController1.text = resultText;
    // Update the state to trigger a re-render
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset("assets/palestine.png"))
        ],
        title: const Text(
          "Encoding Messages",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Explanation",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "This section is for you to copy certain comments or hashtags to then, post them on the different social media platforms.",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Enter your message",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: textEditingController,
              style: const TextStyle(overflow: TextOverflow.ellipsis),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () => copyToClipboard(context, resultText),
                  child: Image.asset("assets/convert.png",
                      height: 45)), // not necessary
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 2,
              controller: textEditingController1,
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 71, 17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                minimumSize: const Size.fromHeight(56),
              ),
              onPressed: () {
                processText();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Center(
                      child: Text(
                        'Woooooooooosh',
                        style: TextStyle(
                            fontFamily: "product_sans",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    duration: Duration(seconds: 1),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: const Text("Encode"),
            ),
          ],
        ),
      ),
    );
  }
}
