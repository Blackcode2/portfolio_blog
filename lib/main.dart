import 'package:flutter/material.dart';
import 'color_schemes.g.dart';
import 'pages/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Porfolio Blog',
      theme: ThemeData(
        // colorScheme: lightColorScheme,
        scaffoldBackgroundColor: const Color.fromARGB(54, 184, 204, 252),
        fontFamily: "Inter",
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontSize: 58,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 17, 14, 56)),
          headlineMedium: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 17, 14, 56)),
          headlineSmall: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 17, 14, 56)),
          bodyLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 17, 14, 56)),
          bodyMedium:
              TextStyle(fontSize: 26, color: Color.fromARGB(255, 17, 14, 56)),
          bodySmall:
              TextStyle(fontSize: 20, color: Color.fromARGB(255, 17, 14, 56)),
          labelMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 17, 14, 56)),
        ),

        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE), //450
          const Breakpoint(start: 451, end: 925, name: TABLET), // 451
          const Breakpoint(start: 926, end: 1050, name: 'DESKTOP3'),
          const Breakpoint(start: 1051, end: 1200, name: 'DESKTOP2'),
          const Breakpoint(start: 1201, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: HomePage(),
    );
  }
}
