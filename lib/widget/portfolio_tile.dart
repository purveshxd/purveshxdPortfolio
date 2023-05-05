import 'dart:math';

import 'package:flutter/material.dart';
import 'package:purveshxd_portfolio/constants/constants.dart';
import 'package:purveshxd_portfolio/data_model/projects_data.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfoliotile extends StatelessWidget {
  const Portfoliotile({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: projectsListTile(),
        // child: Container(child: Text("This is it")),
      ),
    );
  }

  ListTile projectsListTile() {
    return ListTile(
      tileColor: Constants().listColor[Random().nextInt(3)],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: const EdgeInsets.all(20),
      // horizontalTitleGap: 200,
      // visualDensity: VisualDensity.compac,
      // visualDensity: VisualDensity.compact,
      // isThreeLine: true,
      dense: false,
      title: Text(
        projects.elementAt(index)[0],
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      trailing: IconButton(
        // hoverColor: Colors.blue[300],
        icon: Image.asset(
          "assets/githubmark.png",
          width: 30,
        ),
        onPressed: () {
          launchUrl(Uri.parse(projects.elementAt(index)[2]));
        },
      ),
      subtitle: Column(
        // verticalDirection: VerticalDirection.down,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(projects.elementAt(index)[1]),
          // Spacer(),
          const SizedBox(height: 20),
          Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            // spacing: 10,
            children: buildTags(index),
          )
        ],
      ),
    );
  }

  List<Widget> buildTags(int index) {
    List<Widget> tagsWidget = <Widget>[];
    for (Tags element in projects.elementAt(index)[3]) {
      tagsWidget.add(
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Chip(
            side: BorderSide.none,
            elevation: 0,
            labelStyle: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: Colors.white,
            label: Text(
              element.name.characters.toUpperCase().first +
                  element.name.substring(1),
            ),
          ),
        ),
      );
    }
    return tagsWidget;
  }
}
// Container(
//       // height: 150,
//       padding: const EdgeInsets.all(8),
//       margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
//       // width: double.infinity,
//       // height: double.maxFinite,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Constants().listColor[Random().nextInt(3)],
//       ),


