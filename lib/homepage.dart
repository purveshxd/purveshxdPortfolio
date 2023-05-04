import 'package:flutter/material.dart';
import 'package:purveshxd_portfolio/constants/constants.dart';
import 'package:purveshxd_portfolio/sections/contactme_section.dart';
import 'package:purveshxd_portfolio/sections/intro_section.dart';

import 'package:purveshxd_portfolio/sections/portfolio_seciotn.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollcontroller = ScrollController();
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        // endDrawer: Drawer(
        //     shape: const RoundedRectangleBorder(
        //       borderRadius: BorderRadius.all(
        //         Radius.circular(20),
        //       ),
        //     ),
        //     child: Column(
        //       children: [
        //         RoundedContainer(
        //             child: TextButton(
        //           child: const Text("Home"),
        //           onPressed: () {
        //             Navigator.pop(context);
        //             scrollcontroller.animateTo(200,
        //                 duration: const Duration(seconds: 2),
        //                 curve: Curves.easeOut);
        //           },
        //         )),
        //       ],
        //     )),
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "purveshxd",
            style: Constants().headingStyle(),
          ),
        ),
        body: Center(
          child: SizedBox(
            width: 860,
            child: ListView(
              controller: scrollcontroller,
              children: [
                // intro page
                IntroSection(scrollcontroller: scrollcontroller),

                // portfolio section
                PortfolioSection(constraints: constraints),

                // Contact me
                const ContactMeSection()
              ],
            ),
          ),
        ),
      );
    });
  }
}
