import 'package:flutter/material.dart';
import 'package:internapp/widgets/bars/appbar.dart';
import 'package:internapp/widgets/cards/startCards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        appBar: customAppBar(
          title1: "Find you own way",
          title2: "Search in 600 colleges around!",
          size: 180,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                StartCards(
                  cardTitle: "Top Colleges",
                  cardImg: "images/card1.jpg",
                  cardDesc:
                      'Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.',
                ),
                StartCards(
                  cardTitle: "Top Schools",
                  cardImg: "images/card2.jpg",
                  cardDesc:
                      'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                ),
                StartCards(
                  cardTitle: "Exams",
                  cardImg: "images/card3.jpg",
                  cardDesc:
                      'Find an end to end information about the exams that are happening in India',
                ),
              ],
            ),
          ),
        ),
      ),
      // Positioned(
      //   top: 292,
      //   right: 29,
      //   child: count(),
      // ),
      // Positioned(
      //   bottom: 168,
      //   right: 29,
      //   child: count(),
      // ),
      // Positioned(
      //   bottom: 24,
      //   right: 29,
      //   child: count(),
      // )
    ]);
  }
}

class count extends StatelessWidget {
  const count({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6),
            topRight: Radius.circular(3),
            bottomLeft: Radius.circular(4),
            bottomRight: Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          "+126 Colleges",
          style: TextStyle(fontSize: 11),
        ),
      ),
    );
  }
}
