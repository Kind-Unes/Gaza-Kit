import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class News extends StatelessWidget {
  final String title;
  final String date;
  final String content;
  final String imageURL;
  const News(
      {super.key,
      required this.title,
      required this.date,
      required this.content,
      required this.imageURL});

  @override
  Widget build(BuildContext context) {
    const green = Color.fromARGB(255, 78, 177, 81);

    void copyToClipboard(BuildContext context, String text) {
      Clipboard.setData(ClipboardData(text: text));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Center(
              child: Text(
            'The New title got copied!',
            style: TextStyle(
                fontFamily: "product_sans",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
          backgroundColor: green,
          duration: Duration(seconds: 1, milliseconds: 500),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "What's New?!",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          InkWell(
              onTap: () async {
                // await Share.share(title);
              },
              borderRadius: BorderRadius.circular(5000),
              child: const CircleAvatar(
                backgroundColor: green,
                radius: 20,
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                //                                                               TODO : add text here
                copyToClipboard(context, title);
              },
              borderRadius: BorderRadius.circular(5000),
              child: const CircleAvatar(
                backgroundColor: green,
                radius: 20,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
              )),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 230,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(imageURL),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "product_sans",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: "product_sans",
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    content,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "product_sans",
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
