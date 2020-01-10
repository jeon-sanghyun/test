import 'package:flutter/material.dart';

import 'featured_list.dart';
import 'init_list.dart';
import 'newest_list.dart';

class ArtistList extends StatefulWidget {

  ArtistList();

  @override
  _ArtistListState createState() => _ArtistListState();
}

class _ArtistListState extends State<ArtistList> {

  Widget a;

  String listselect = 'asdasd';

  void click(String b) {
    listselect = b;
    setState(() {
      print(listselect);
    });
  }

  Widget condition(click) {
    if (listselect == 'F') {
      a = FeaturedList();
    } else if (listselect == 'N') {
      a = NewestList();
    } else {
      a = InitList();
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //      height: mediaQuery.size.height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //       width: mediaQuery.size.width * 0.45,
                child: Text(
                  'Today',
                  style: TextStyle(
                      // color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                //          width: mediaQuery.size.width * 0.25,
                child: FlatButton(
                  child: Text('Featured'),
                  onPressed: () {
                    click('F');
                  },
                ),
              ),
              Container(
                //           width: mediaQuery.size.width * 0.25,
                child: FlatButton(
                  child: Text('Newest'),
                  onPressed: () {
                    click('N');
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 450,
          child: condition(a),
        )
      ],
    );
  }
}
