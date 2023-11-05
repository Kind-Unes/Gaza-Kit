import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gazakit/src/utils/colors.dart';
import 'package:gazakit/src/utils/extentions.dart';

class CommentsHashtags extends StatefulWidget {
  const CommentsHashtags({super.key});

  @override
  State<CommentsHashtags> createState() => _CommentsHashtagsState();
}

class _CommentsHashtagsState extends State<CommentsHashtags> {
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
        backgroundColor: Colors.green,
        duration: Duration(seconds: 1, milliseconds: 500),
      ),
    );
  }

  int index = 0;
  int indexx = 0;
  @override
  Widget build(BuildContext context) {
    final comments = [
      "What is happening in palestine started in 1948 when the zionists fled to palestine, and started stealing palestinians land, doing genocides and many more crimes when the armed resistance hamas (not terrorists) didn't even exist, and now they are trying to kill all the 2 million palestinian, either they're with hamas or not, this is not a simple conflict, this is good vs bad, do your research and choose your side",
      "stand with the oppressed, stand against genocide , up to 3500 kids are killed everyone of them has a face story , and dreams those are not just numbers !",
      "How can you kill children? Round up an entire population and deprive them of water, food and electricity? How can you bomb a hospital full of children? What religion allows you to do that? I'm not going to mention this terrorist country in this post, because even its name should no longer appear among the countries. It is the only terrorist organization that is approved by the United States and other countries that have no respect for humanity.",
      "Deeply concerned on seeing these innocent children's. I feel shame to live in this kind of world where there is no humanity and surprised to see how these world leaders still support war after seeing these children's. I feel animals in forest are much better than we humans.. Please stop the war and we all want peace in this world…"
    ];
    final hashtags = [
      "#palestine",
      "#freepalestine",
      "#gaza",
      "#savepalestine ",
      "#palestinewillbefree ",
      "#savegaza",
      "#gazaunderattack",
      "#boycottisrael",
      "#prayforpalestine",
      "#savepalestina",
      "#palestinianlivesmatter",
      "#Freedom",
    ];
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
          "Comments/Hashtags",
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
              "Comments",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    if (index > 0) {
                      index--;
                    }
                  }),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  width: 250,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.kPrimaryColor,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          height: 110,
                          width: 170,
                          child: Text(
                            comments[index],
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12, color: Colors.black),
                          )),
                      const VerticalDivider(
                        color: AppColors.kPrimaryColor,
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                      GestureDetector(
                          onTap: () =>
                              copyToClipboard(context, comments[index]),
                          child: Image.asset("assets/copy.png")),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    if (index < comments.length - 1) {
                      index++;
                    }
                  }),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Hashtags",
              style: context.textTheme.bodyMedium!
                  .copyWith(fontSize: 22, color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    if (indexx < hashtags.length - 1) {
                      indexx++;
                    }
                  }),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 120,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.kPrimaryColor,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                          child: SizedBox(
                              height: 110,
                              width: 170,
                              child: Text(
                                hashtags[indexx],
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ))),
                      const VerticalDivider(
                        color: AppColors.kPrimaryColor,
                        thickness: 2,
                        indent: 5,
                        endIndent: 5,
                      ),
                      GestureDetector(
                          onTap: () =>
                              copyToClipboard(context, hashtags[index]),
                          child: Image.asset("assets/copy.png")),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    if (indexx < hashtags.length - 1) {
                      indexx++;
                    }
                  }),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17)),
                minimumSize: const Size.fromHeight(56),
              ),
              onPressed: () {},
              child: const Text("Open Instagram"),
            ),
          ],
        ),
      ),
    );
  }
}
