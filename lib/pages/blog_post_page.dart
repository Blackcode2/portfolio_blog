import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_blog/components/custom_bottom_navigationbar.dart';
import 'package:portfolio_blog/components/custom_drawer.dart';
import '../components/top_navigationbar.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BlogPostPage extends StatelessWidget {
  BlogPostPage({required this.fileRoot, super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  late String fileRoot;

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
            // 메타 데이터를 받기 위한 첫 번째 퓨처 빌더
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveValue(context,
                      defaultValue: 200.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 100.0)
                      ]).value!,
                  right: ResponsiveValue(context,
                      defaultValue: 200.0,
                      conditionalValues: [
                        const Condition.smallerThan(
                            name: 'DESKTOP3', value: 100.0)
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
                      );
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
