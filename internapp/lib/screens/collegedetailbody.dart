import 'package:flutter/material.dart';
import 'package:internapp/screens/details/tabs/QandA.dart';
import 'package:internapp/screens/details/tabs/aboutcollege.dart';
import 'package:internapp/screens/details/tabs/events.dart';
import 'package:internapp/screens/details/tabs/hostel.dart';
import 'package:internapp/widgets/bars/bottomnavigator.dart';

// this can later be converted into statefull widget and this body
// can be used while fetching info from the cards
class detailbody extends StatelessWidget {
  final dynamic colname, colimage, coldesc, colRate;
  const detailbody(
      {Key? key,
      @required this.colname,
      @required this.colimage,
      @required this.coldesc,
      @required this.colRate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Stack(children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 0, 44, 81),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.bookmark),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    colname,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        shadows: [
                          Shadow(
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )
                        ]),
                    textAlign: TextAlign.start,
                  ),
                  background: Image(
                    image: AssetImage(colimage),
                    fit: BoxFit.cover,
                  )),
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            coldesc,
                            style: TextStyle(
                                color: Color.fromARGB(255, 53, 53, 53),
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            height: 60,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    colRate,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 223, 223, 223),
                      child: TabBar(
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 3,
                                  style: BorderStyle.solid)),
                          tabs: [
                            Tab(
                              child: Text(
                                'About College',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Hostel facility',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Q & A',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Events',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 630,
                      child: TabBarView(
                          children: [aboutCollege(), Hostel(), QA(), Events()]),
                    )
                  ]),
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ]),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    color: Colors.transparent,
                    elevation: 8,
                    child: InkWell(
                      onTap: () => {print("Pressed")},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Color.fromARGB(255, 0, 44, 81)),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                "Apply Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        )
      ])),
    );
  }
}
