import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String? content;

  const CustomTitle({super.key, this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(15)),
        Text(
          content!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
