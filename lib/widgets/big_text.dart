import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text1, text2;

  const BigText({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Text(
      "$text1\n$text2",
      style: TextStyle(
          fontSize: (height > width) ? height / 15 : height / 10,
          // fontSize: height / 8.5,
          // fontSize: 92,
          fontWeight: FontWeight.w100,
          fontFamily: 'Outline Big'),
    );
  }
}
