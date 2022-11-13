import 'package:flutter/material.dart';

class SubText extends StatelessWidget {
  final String content;
  final double width;

  const SubText({super.key, required this.content, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(padding: EdgeInsets.only(top: 15)),
      SizedBox(
        width: width,
        child: Text(
          content,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 13,
          ),
        ),
      )
    ]);
  }
}
