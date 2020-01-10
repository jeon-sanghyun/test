import 'package:flutter/material.dart';

import 'featured_list.dart';
import 'init_list.dart';
import 'newest_list.dart';
import '../rank.dart';

class ArtistList extends StatelessWidget {
  final Function click;
  final list;
  var a;

  ArtistList(
    this.click,
    this.list,
  );

  Widget condition(list) {
    if (list == 'F') {
      a = FeaturedList();
      // a = 'F click';
    } else if (list == 'N') {
      a = NewestList();
      // a = 'N click';
    } else if (list == 'R') {
      a = Rank();
    } else {
      a = InitList();
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      //Container(
      //  child: condition(list),
      //)
    ]);
  }
}
