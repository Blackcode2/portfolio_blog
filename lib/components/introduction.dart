import 'package:flutter/material.dart';
import 'package:portfolio_blog/pages/blog_page.dart';
import 'package:portfolio_blog/pages/projects_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../components/button_widet.dart';
import 'custom_text.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 120, 0, 110),
      child: ResponsiveRowColumn(
        layout: ResponsiveBreakpoints.of(context).smallerThan('DESKTOP3')
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: SizedBox(
              width: ResponsiveValue(context,
                  defaultValue: 520.0,
                  conditionalValues: [
                    const Condition.smallerThan(name: DESKTOP, value: 450.0),
                    const Condition.smallerThan(name: 'DESKTOP2', value: 400.0),
                    const Condition.smallerThan(name: 'DESKTOP3', value: 450.0),
                    const Condition.smallerThan(name: TABLET, value: 300.0)
                  ]).value,
              height: 400,
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.COLUMN,
                columnCrossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    columnFlex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: HeadlineLargeText(
                        text: 'Hi there, I am Dogyung Kim',
                      ),
                    ),
                  ),
                  const ResponsiveRowColumnItem(
                    child: SizedBox(height: 15),
                  ),
                  ResponsiveRowColumnItem(
                      child: BodySmallText(
                    text:
                        '$screenWidth Flutter developer and student of Handong Global University. I am a junior developer.',
                    textAlign: TextAlign.left,
                  )),
                  const ResponsiveRowColumnItem(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: ButtonWidet(
                      buttonText: 'Get in touch',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  color: const Color.fromARGB(255, 206, 202, 255),
                  height: ResponsiveValue(context,
                      defaultValue: 510.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: DESKTOP, value: 440.0),
                        const Condition.smallerThan(
                            name: 'DESKTOP2', value: 360.0),
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 300.0),
                        const Condition.smallerThan(name: TABLET, value: 250.0)
                      ]).value, //510
                  width: ResponsiveValue(context,
                      defaultValue: 500.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: DESKTOP, value: 430.0),
                        const Condition.smallerThan(
                            name: 'DESKTOP2', value: 350.0),
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 450.0),
                        const Condition.smallerThan(name: TABLET, value: 300.0)
                      ]).value,
                  child: Image.asset(
                    'assets/images/3d_character.png',
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class IntroWork extends StatelessWidget {
  const IntroWork({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest works",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    )),
              ],
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: ResponsiveValue(context,
                      defaultValue: 500.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP2', value: 350.0),
                      ]).value,
                  child: BodySmallText(
                      text:
                          'I show only my best works built completely with passion, simplicity, and creativity!',
                      textAlign: TextAlign.left),
                ),
              ],
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: ProjectCardGridView(
            isHome: true,
          ),
        ),
      ],
    );
  }
}

class IntroBlog extends StatelessWidget {
  const IntroBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Posts",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          "View all",
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    )),
              ],
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: ResponsiveValue(context,
                      defaultValue: 500.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP2', value: 350.0),
                      ]).value,
                  child: BodySmallText(
                      text:
                          'Vonge blog features productivity, tips, inspiration and strategies for massive profits. Find out how to set up a successful blog or how to make yours even better!',
                      textAlign: TextAlign.left),
                ),
              ],
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          child: BlogCardGridView(
            isHome: true,
          ),
        ),
      ],
    );
  }
}
