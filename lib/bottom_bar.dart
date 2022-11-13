import 'package:flutter/material.dart';
import 'package:hw1/bottom_bar_element.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color.fromARGB(255, 110, 110, 110),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomBottomBarElement(
              icon: Icons.person,
              title: "Authors",
            ),
            CustomBottomBarElement(
              icon: Icons.my_library_books,
              title: "Papers",
            ),
            CustomBottomBarElement(
              icon: Icons.collections_bookmark,
              title: "Books",
            ),
            CustomBottomBarElement(
              icon: Icons.search,
              title: "Search",
            ),
          ]),
    );
  }
}
