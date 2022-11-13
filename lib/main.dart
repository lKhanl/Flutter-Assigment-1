import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw1/title.dart';

import './card.dart';
import 'bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: const CustomBottomBar(),
        appBar: AppBar(
          title: Row(
            children: [
              const Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 35,
              ),
              const Padding(padding: EdgeInsets.only(right: 15)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: GoogleFonts.wallpoet(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Mehmet Ozcan',
                    style: GoogleFonts.wallpoet(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.yellowAccent,
          actions: [
            Row(
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                ),
                Text(
                  'Eskişehir',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
                Padding(padding: EdgeInsets.only(right: 10)),
              ],
            )
          ],
        ),
        body: Column(children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomTitle(
                content: "Upcoming Conferences",
              ),
              Text(
                "View All>>",
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.blue,
                    decoration: TextDecoration.underline),
              ),
              Padding(padding: EdgeInsets.only(left: 0)),
            ],
          ),
          Row(
            children: const [
              Padding(padding: EdgeInsets.only(left: 40)),
              CustomCard(
                  imageNumber: 1,
                  subText: "Applying Education in a Complex World"),
              CustomCard(
                  imageNumber: 2,
                  subText: "HERITAGE: Past and Present - Build and Social"),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 80)),
          const CustomTitle(
            content: "Favorites",
          ),
          Row(
            children: const [
              Padding(padding: EdgeInsets.only(left: 40)),
              CustomCard(
                  imageNumber: 3,
                  subText: "New Perspectives in Science Education"),
            ],
          ),
        ]),
      ),
    );
  }
}
