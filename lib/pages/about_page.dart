import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio_blog/components/custom_bottom_navigationbar.dart';
import 'package:portfolio_blog/components/custom_drawer.dart';
import 'package:portfolio_blog/components/custom_text.dart';
import '../components/top_navigationbar.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/services.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(54, 184, 204, 252),
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
              child: Column(
                children: [
                  TopNavigationbar(
                    scaffoldKey: scaffoldKey,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        ResponsiveValue(context,
                            defaultValue: 200.0,
                            conditionalValues: [
                              const Condition.smallerThan(
                                  name: 'DESKTOP3', value: 100.0),
                              const Condition.equals(name: TABLET, value: 20.0),
                              const Condition.equals(name: MOBILE, value: 10.0),
                            ]).value!,
                        ResponsiveValue(context,
                            defaultValue: 80.0,
                            conditionalValues: [
                              const Condition.smallerThan(
                                  name: 'DESKTOP3', value: 30.0)
                            ]).value!,
                        ResponsiveValue(context,
                            defaultValue: 200.0,
                            conditionalValues: [
                              const Condition.smallerThan(
                                  name: 'DESKTOP3', value: 100.0),
                              const Condition.equals(name: TABLET, value: 20.0),
                              const Condition.equals(name: MOBILE, value: 10.0),
                            ]).value!,
                        100),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: SizedBox(
                            width: ResponsiveValue(context,
                                defaultValue: 440.0,
                                conditionalValues: [
                                  const Condition.smallerThan(
                                      name: TABLET, value: 240.0)
                                ]).value,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HeadlineLargeText(text: "About"),
                                const SizedBox(
                                  height: 38,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 400,
                          width: 300,
                          child: Image.asset("assets/images/profile-image.png"),
                        ),
                        FutureBuilder(
                            future:
                                rootBundle.loadString("assets/about/about.md"),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (snapshot.hasData) {
                                return Markdown(
                                    shrinkWrap: true,
                                    data: snapshot.data!.toString(),
                                    styleSheet:
                                        MarkdownStyleSheet.fromTheme(ThemeData(
                                            textTheme: const TextTheme(
                                                bodyMedium: TextStyle(
                                      fontSize: 20.0,
                                    )))));
                              }
                              return const Center(
                                child: Text("can not load the page"),
                              );
                            }),
                      ],
                    ),
                  ),
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
