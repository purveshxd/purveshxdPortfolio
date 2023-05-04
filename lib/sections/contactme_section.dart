import 'package:flutter/material.dart';
import 'package:purveshxd_portfolio/constants/constants.dart';
import 'package:purveshxd_portfolio/widget/rounded_container.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Contact",
            style: Constants().headingStyle(),
          ),
          const SizedBox(
            height: 5,
          ),
          Wrap(
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: buildSocials(),
          )
        ],
      ),
    );
  }

  List<Widget> buildSocials() {
    List<Widget> socialWidget = <Widget>[];
    for (var i = 0; i < Constants().socials.length; i++) {
      socialWidget.add(
        Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: () {
                launchUrl(Uri.parse(Constants().socials[i][1]));
              },
              child: Chip(
                labelStyle: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
                avatar: Image.asset(Constants().socials[i][2]),
                label: Text(Constants().socials[i][0]),
                backgroundColor: Colors.white,
              ),
            )),
      );
    }
    return socialWidget;
  }
}
