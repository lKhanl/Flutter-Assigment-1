import 'package:flutter/material.dart';
import 'package:hw1/sub_test.dart';

class CustomCard extends StatelessWidget {
  final int imageNumber;
  final String subText;
  const CustomCard(
      {super.key, required this.imageNumber, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.fromLTRB(0, 20, 170, 0)),
        Image.asset(
          'assets/images/cnf_$imageNumber.png',
          height: 90,
        ),
        SubText(content: subText, width: 150),
      ],
    );
  }
}
