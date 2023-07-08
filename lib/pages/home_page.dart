import 'package:flutter/material.dart';
import 'package:portfolio_blog/components/custom_drawer.dart';
import 'package:portfolio_blog/components/introduction.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../components/top_navigationbar.dart';
import '../components/custom_bottom_navigationbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveValue(context,
                      defaultValue: 82.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 40.0)
                      ]).value!,
                  right: ResponsiveValue(context,
                      defaultValue: 82.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 40.0)
                      ]).value!),
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.COLUMN,
                children: [
                  ResponsiveRowColumnItem(
                      rowFlex: 1,
                      child: TopNavigationbar(
                        scaffoldKey: scaffoldKey,
                      )),
                  const ResponsiveRowColumnItem(child: Introduction()),
                  const ResponsiveRowColumnItem(
                      child: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: IntroWork(),
                  )),
                  const ResponsiveRowColumnItem(
                      child: Padding(
                    padding: EdgeInsets.only(top: 180),
                    child: IntroBlog(),
                  )),
                ],
              ),
            ),
            CustomBottomNavigationbar(),
          ],
        ),
      ),
    );
  }
}
