import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeadlineLargeText extends StatelessWidget {
  HeadlineLargeText({required this.text, super.key});

  late String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize:
              ResponsiveValue(context, defaultValue: 58.0, conditionalValues: [
            const Condition.smallerThan(name: DESKTOP, value: 50.0),
            const Condition.smallerThan(name: 'DESKTOP2', value: 36.0),
            const Condition.smallerThan(name: 'DESKTOP3', value: 36.0),
            const Condition.smallerThan(name: TABLET, value: 22.0),
          ]).value,
          fontWeight: FontWeight.w900,
          color: const Color.fromARGB(255, 17, 14, 56)),
    );
  }
}

// class HeadlineMediumText extends StatelessWidget {
//   HeadlineMediumText({required this.text, super.key});

//   late String text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//           fontSize:
//               ResponsiveValue(context, defaultValue: 58.0, conditionalValues: [
//             const Condition.smallerThan(name: DESKTOP, value: 50.0),
//             const Condition.smallerThan(name: 'DESKTOP2', value: 36.0),
//             const Condition.smallerThan(name: 'DESKTOP3', value: 36.0),
//             const Condition.smallerThan(name: TABLET, value: 22.0),
//           ]).value,
//           fontWeight: FontWeight.w900,
//           color: const Color.fromARGB(255, 17, 14, 56)),
//     );
//   }
// }

class BodySmallText extends StatelessWidget {
  BodySmallText({required this.text, required this.textAlign, super.key});

  late String text;
  late TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize:
              ResponsiveValue(context, defaultValue: 20.0, conditionalValues: [
            const Condition.smallerThan(name: DESKTOP, value: 18.0),
            const Condition.smallerThan(name: TABLET, value: 16.0),
          ]).value,
          color: const Color.fromARGB(255, 17, 14, 56)),
      textAlign: textAlign,
    );
  }
}
