import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final dynamic title1;
  final dynamic title2;
  final double size;

  const customAppBar(
      {Key? key, @required this.title1, @required this.title2, this.size = 0})
      : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(size);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 140,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_on_rounded),
          onPressed: () {},
        )
      ],
      title: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 2,
            ),
            child: Text(
              title1,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 8),
            child: Text(
              title2,
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "   Search for colleges, school....",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(17)),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: IconButton(
                          icon: const Icon(Icons.mic),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 44, 81),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
    );
  }
}
