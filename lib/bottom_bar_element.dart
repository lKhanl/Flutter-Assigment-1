import 'package:flutter/material.dart';

class CustomBottomBarElement extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomBottomBarElement(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: IconButton(
            icon: Icon(icon),
            color: Colors.white,
            onPressed: () {},
            iconSize: 30,
          ),
        ),
        Text(title, style: const TextStyle(color: Colors.white)),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
      ],
    );
  }
}
