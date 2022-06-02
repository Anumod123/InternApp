import 'package:flutter/material.dart';
import 'package:internapp/widgets/bars/sortingbar.dart';

class StartCards extends StatelessWidget {
  final dynamic cardTitle;
  final dynamic cardDesc;
  final dynamic cardImg;
  const StartCards(
      {Key? key,
      @required this.cardTitle,
      @required this.cardDesc,
      @required this.cardImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 0,
            child: InkWell(
              onTap: () => {modalButton(context)},
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage(cardImg),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                        ],
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(
                        cardTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8, right: 25),
                        child: Text(
                          cardDesc,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              wordSpacing: 5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          right: 10,
          child: count(),
        ),
      ],
    );
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
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Colors.transparent,
          ],
        ),
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
          style: TextStyle(fontSize: 11, color: Colors.white),
        ),
      ),
    );
  }
}
