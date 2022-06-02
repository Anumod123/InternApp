import 'package:flutter/material.dart';
import 'package:internapp/widgets/bars/appbar.dart';
import 'package:internapp/widgets/cards/collegecards.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class colleges extends StatefulWidget {
  const colleges({Key? key}) : super(key: key);

  @override
  State<colleges> createState() => _collegesState();
}

class _collegesState extends State<colleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(
          title1: "",
          title2: "",
          size: 120,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: horizontalcards(
                      titlename: "MVSH Engineering College",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: horizontalcards(
                      titlename: "MVSH Engineering College",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: horizontalcards(
                      titlename: "MVSH Engineering College",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: horizontalcards(
                      titlename: "MVSH Engineering College",
                    ),
                  )
                ]),
              ),
              collegecards(
                collegeImage: "images/college.jpg",
                collegeName: "GHJK Engineering college",
                collegeDesc:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Eu ut imperdiet sed nec ullamcorper.',
                collegeRating: "4.3",
              ),
              collegecards(
                  collegeImage: "images/college2.jpg",
                  collegeDesc:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Eu ut imperdiet sed nec ullamcorper",
                  collegeName: "Bachelor Of Technology",
                  collegeRating: "4.3"),
              collegecards(
                  collegeImage: 'images/college3.jpg',
                  collegeDesc:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Eu ut imperdiet sed nec ullamcorper.',
                  collegeName: 'London University',
                  collegeRating: '3.8'),
            ],
          ),
        ));
  }
}
