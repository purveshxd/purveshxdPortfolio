import 'dart:math';

import 'package:flutter/material.dart';
import 'package:purveshxd_portfolio/constants/constants.dart';
import 'package:purveshxd_portfolio/widget/animated_text.dart';
import 'package:purveshxd_portfolio/widget/my_image.dart';
import 'package:purveshxd_portfolio/widget/rounded_container.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key, required this.scrollcontroller});

  final ScrollController scrollcontroller;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return RoundedContainer(
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // rowColumnSwitch(width),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              MyImage(),
              Text(
                "Hello, I'm Purveshxd a",
                // textAlign: TextAlign.left,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              AnimatedTextW(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "A undergrad confused between development and visual art, So I thought why not both!",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          // Resume Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  // height: 25,
                  color: Colors.white,
                  child: const Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    scrollcontroller.animateTo(
                        scrollcontroller.position.maxScrollExtent,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeIn);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  // height: 25,
                  color: Constants().listColor[Random().nextInt(3)],
                  child: const Text(
                    "Resume",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri.parse(Constants().resumeUrl),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget rowColumnSwitch(width) {
  if (width < 768) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        MyImage(),
        Text(
          "Hello, I'm Purveshxd a",
          // textAlign: TextAlign.left,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        AnimatedTextW(),
      ],
    );
  } else {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: const [
              Text(
                "Hello, I'm Purveshxd a",
                // textAlign: TextAlign.left,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              AnimatedTextW(),
            ],
          ),
        ),
        const MyImage(),
      ],
    );
  }
}
