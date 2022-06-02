import 'package:flutter/material.dart';
import 'package:internapp/screens/collegedetailbody.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class horizontalcards extends StatelessWidget {
  final dynamic titlename;
  const horizontalcards({Key? key, @required this.titlename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        titlename,
        style: TextStyle(
            fontSize: 8, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}

class collegecards extends StatelessWidget {
  final dynamic collegeImage;
  final dynamic collegeName;
  final dynamic collegeDesc;
  final dynamic collegeRating;
  const collegecards(
      {Key? key,
      @required this.collegeImage,
      @required this.collegeDesc,
      @required this.collegeName,
      @required this.collegeRating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10.0,
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => detailbody(
                            colname: collegeName,
                            colimage: collegeImage,
                            coldesc:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nFelis consectetur nulla pharetra praesent hendrerit \nvulputate viverra. Pellentesque aliquam tempus faucibus \nest.",
                            colRate: collegeRating,
                          )));
            },
            child: Column(children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage(collegeImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.share_outlined,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                )),
                          ),
                          Center(
                            child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.bookmark_border,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    title: Text(
                      collegeName,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        collegeDesc,
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
                      ),
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 40,
                          decoration: new BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  collegeRating,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 11,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Container(
                            width: 70,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 2, 31, 77),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Apply Now',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.white),
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    dense: false),
              ),
              SizedBox(
                  height: 1,
                  width: 320,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  )),
              ListTile(
                title: Text(
                  "More than 1000+ students have been placed",
                  style: TextStyle(fontSize: 8),
                ),
                leading: Icon(
                  MdiIcons.sealVariant,
                  color: Colors.blue,
                ),
                trailing: Icon(Icons.remove_red_eye_outlined),
              ),
            ])));
  }
}
