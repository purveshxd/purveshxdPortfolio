import 'package:flutter/material.dart';

class Constants {
  final String resumeUrl =
      "https://drive.google.com/file/d/1VfYUCqsTC-Of3fGrOnxyoOuQ_-TOqDo9/view?usp=sharing";
  TextStyle headingStyle() {
    return const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
    );
  }

  List<Color> listColor = [
    const Color.fromARGB(255, 187, 251, 216),
    const Color.fromARGB(255, 187, 222, 251),
    // const Color.fromARGB(255, 251, 187, 222),
    const Color.fromARGB(255, 251, 216, 187),
  ];

  List socials = [
    ["Github", "https://github.com/purveshxd", "assets/githubmark.png"],
    [
      "linkedin",
      "https://www.linkedin.com/in/purveshxd/",
      "assets/linkedin.png"
    ],
    ["twitter", "https://twitter.com/xdpurvesh", "assets/twitter.png"],
    ["Email", "mailto:do.psd23@gmail.com", "assets/gmail.png"],
    [
      "Instagram",
      "https://www.instagram.com/purveshxd/",
      "assets/instagram.png"
    ],
    [
      "Fiverr",
      "https://www.fiverr.com/purveshxd?public_mode=true",
      "assets/fiverr.png"
    ],
    // ["Phone", "tel:9146477923", "assets/googlephone.png"],
    ["Linktr", "https://linktr.ee/purveshxd", "assets/link.png"],
  ];
}

enum Tags {
  flutter,
  python,
  dart,
  firebaseAuth,
  firebaseFirestore,
  crud,
}

bool switchGridColumn(width) {
  if (width > 768) {
    return true;
  } else {
    return false;
  }
}
