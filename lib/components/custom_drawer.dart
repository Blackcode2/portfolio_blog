import 'package:flutter/material.dart';
import 'package:portfolio_blog/pages/about_page.dart';
import 'package:portfolio_blog/pages/blog_page.dart';
import 'package:portfolio_blog/pages/home_page.dart';
import 'package:portfolio_blog/pages/projects_page.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  final Uri _url = Uri.parse('https://github.com/Blackcode2');

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Menu',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ],
          )),
          ListTile(
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            title: Text(
              'Projects',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProjectsPage()));
            },
          ),
          ListTile(
            title: Text(
              'Blog',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BlogPage()));
            },
          ),
          ListTile(
            title: Text(
              'About',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
          ListTile(
            title: Text(
              'Github',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            onTap: () async {
              await launchUrl(_url);
            },
          ),
        ],
      ),
    );
  }
}
