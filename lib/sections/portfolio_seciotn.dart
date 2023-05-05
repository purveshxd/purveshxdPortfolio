import 'package:flutter/material.dart';
import 'package:purveshxd_portfolio/constants/constants.dart';
import 'package:purveshxd_portfolio/data_model/projects_data.dart';
import 'package:purveshxd_portfolio/widget/portfolio_tile.dart';
import 'package:purveshxd_portfolio/widget/rounded_container.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key, required this.constraints});
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return RoundedContainer(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Projects",
          // style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          style: Constants().headingStyle(),
        ),
        switchGridColumn(width)
            ? buildGridSection()
            : Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: buildPortfolioTile(width),
                // children: [buildGridSection()],
              ),
      ],
    ));
  }

  List<Widget> buildPortfolioTile(width) {
    List<Widget> widgetList = [];

    for (var i = 0; i < projects.length; i++) {
      widgetList.add(Portfoliotile(index: i));
    }
    return widgetList;
  }
}

StaggeredGrid buildGridSection() {
  List<Widget> widgetList = [];
  for (var i = 0; i < projects.length; i++) {
    widgetList.add(Portfoliotile(index: i));
  }

  return StaggeredGrid.count(
    crossAxisCount: 2,
    children: widgetList,
  );
}
