import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_blog/components/custom_bottom_navigationbar.dart';
import 'package:portfolio_blog/components/custom_drawer.dart';
import '../components/top_navigationbar.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:portfolio_blog/components/custom_text.dart';

class ProjectPostPage extends StatelessWidget {
  ProjectPostPage({required this.fileRoot, required this.metaData, super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  late String fileRoot;
  late Map<String, dynamic> metaData;

  // Fucntion to load markdown file from assets
  Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
    // return await DefaultAssetBundle.of(ctx).loadString('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: CustomDrawer(),
      key: scaffoldKey,
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
              child: TopNavigationbar(
                scaffoldKey: scaffoldKey,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: SizedBox(
                width: ResponsiveValue(context,
                    defaultValue: 600.0,
                    conditionalValues: [
                      const Condition.smallerThan(name: TABLET, value: 240.0)
                    ]).value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeadlineLargeText(text: metaData['title']),
                    const SizedBox(
                      height: 38,
                    ),
                    Text(
                      metaData['date'],
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              ),
            ),
            // 메타 데이터를 받기 위한 첫 번째 퓨처 빌더
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveValue(context,
                      defaultValue: 200.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 100.0),
                        const Condition.equals(name: TABLET, value: 20.0),
                        const Condition.equals(name: MOBILE, value: 10.0),
                      ]).value!,
                  right: ResponsiveValue(context,
                      defaultValue: 200.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 100.0),
                        const Condition.equals(name: TABLET, value: 20.0),
                        const Condition.equals(name: MOBILE, value: 10.0),
                      ]).value!),
              child: FutureBuilder(
                  future: loadAsset(fileRoot),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasData) {
                      return Markdown(
                          shrinkWrap: true,
                          data: snapshot.data!.toString(),
                          styleSheet: MarkdownStyleSheet.fromTheme(ThemeData(
                              textTheme: const TextTheme(
                                  bodyMedium: TextStyle(
                            fontSize: 20.0,
                          )))));
                    }

                    return const Center();
                  }),
            ),
            CustomBottomNavigationbar(),
          ],
        ),
      ),
    );
  }
}
