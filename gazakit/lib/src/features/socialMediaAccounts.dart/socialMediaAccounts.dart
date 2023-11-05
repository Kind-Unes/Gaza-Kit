import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaAccountsPage extends StatelessWidget {
  const SocialMediaAccountsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      appBar: AppBar(
        backgroundColor: green,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: 80,
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
          '\nSocial Media Accounts \nSupporting Gaza',
          style: TextStyle(
            fontFamily: "product_sans",
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SocialMediaTile(
                text: 'This is Gaza',
                isInstagram: false,
                url: "https://twitter.com/thisisgaza",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'byplestia',
                isInstagram: true,
                url: "https://www.instagram.com/byplestia/",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'Bel Trew',
                isInstagram: false,
                url: "https://twitter.com/Beltrew",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'doaamohammad',
                isInstagram: true,
                url: "https://www.instagram.com/_doaa_mohammad/",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'eye.on.palestine',
                isInstagram: true,
                url: "https://www.instagram.com/eye.on.palestine/",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'Farah Baker',
                isInstagram: false,
                url: "https://twitter.com/Farah_Gazan",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'motaz_azaiza',
                isInstagram: true,
                url: "https://www.instagram.com/motaz_azaiza/",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'theimeu',
                isInstagram: true,
                url: "https://www.instagram.com/theimeu/",
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaTile(
                text: 'hindkhoudary',
                isInstagram: true,
                url: "https://www.instagram.com/hindkhoudary/",
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialMediaTile extends StatelessWidget {
  const SocialMediaTile({
    super.key,
    required this.text,
    required this.isInstagram,
    required this.url,
  });

  final String text;
  final String url;
  final bool isInstagram;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Material(
      color: Colors.green,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse(url));
        },
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: double.infinity,
          height: height * 0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.white, width: 2)),
          child: Stack(
            children: [
              Positioned(
                left: 40,
                top: 18,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: "product_sans",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Positioned(
                left: 260,
                top: 12,
                child: Image(
                  image: isInstagram
                      ? const AssetImage("assets/icons8-instagram-50.png")
                      : const AssetImage("assets/icons8-twitterx-50.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const green = Color.fromARGB(255, 78, 177, 81);
