import 'package:flutter/material.dart';
import 'package:portfolio_blog/pages/about_page.dart';
import 'package:portfolio_blog/pages/blog_page.dart';
import 'package:portfolio_blog/pages/home_page.dart';
import 'package:portfolio_blog/pages/projects_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class TopNavigationbar extends StatelessWidget {
  TopNavigationbar({required this.scaffoldKey, super.key});

  late GlobalKey<ScaffoldState> scaffoldKey;
  final Uri _url = Uri.parse('https://github.com/Blackcode2');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        ResponsiveValue(context, defaultValue: 48.0, conditionalValues: [
          const Condition.smallerThan(name: 'DESKTOP3', value: 20.0)
        ]).value!,
        0,
        ResponsiveValue(context, defaultValue: 48.0, conditionalValues: [
          const Condition.smallerThan(name: 'DESKTOP3', value: 20.0)
        ]).value!,
      ),
      child: ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        layout: ResponsiveRowColumnType.ROW,
        children: [
          const ResponsiveRowColumnItem(child: MainLogo()),
          const ResponsiveRowColumnItem(
            child: SizedBox(
              width: 70,
            ),
          ),
          ResponsiveRowColumnItem(
            child: NavigationbarButton(
              label: 'Home',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
          ResponsiveRowColumnItem(
            child: NavigationbarButton(
              label: 'Projects',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProjectsPage()));
              },
            ),
          ),
          ResponsiveRowColumnItem(
            child: NavigationbarButton(
              label: 'Blog',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BlogPage()));
              },
            ),
          ),
          ResponsiveRowColumnItem(
            child: NavigationbarButton(
              label: 'About',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
          ),
          const ResponsiveRowColumnItem(
            child: Expanded(
              child: SizedBox(),
            ),
          ),

          // 기존 버튼 위젯으로 만든 버튼
          // ResponsiveRowColumnItem(
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: const Color.fromARGB(54, 184, 204, 252),
          //       elevation: 0,
          //       padding: EdgeInsets.zero,
          //       // fixedSize: const Size(50, 50),
          //       shape: const CircleBorder(),
          //     ),
          //     child: const ImageIcon(
          //       AssetImage('assets/images/github-mark.png'),
          //       color: Colors.black,
          //       size: 30,
          //     ),
          //   ),
          // ),
          ResponsiveRowColumnItem(
            child: ResponsiveVisibility(
              hiddenConditions: const [Condition.smallerThan(name: 'DESKTOP2')],
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                    onTap: () async {
                      await launchUrl(_url);
                    },
                    child: const ImageIcon(
                      AssetImage('assets/images/github-mark.png'),
                    )),
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: ResponsiveVisibility(
              visible: false,
              visibleConditions: const [
                Condition.smallerThan(name: 'DESKTOP2')
              ],
              child: EndDrawerButton(
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainLogo extends StatelessWidget {
  const MainLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text('Blackcde2',
            style: TextStyle(
              color: const Color.fromARGB(255, 17, 14, 56),
              fontWeight: FontWeight.w800,
              fontSize: ResponsiveValue(context,
                  defaultValue: 18.0,
                  conditionalValues: [
                    const Condition.smallerThan(name: 'DESKTOP3', value: 14.0)
                  ]).value!,
            )));
  }
}

class NavigationbarButton extends StatelessWidget {
  NavigationbarButton(
      {required this.label, required this.onPressed, super.key});

  late String label;
  late void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      hiddenConditions: const [Condition.smallerThan(name: 'DESKTOP2')],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text(
              label,
              style: Theme.of(context).textTheme.labelMedium,
            )),
      ),
    );
  }
}
