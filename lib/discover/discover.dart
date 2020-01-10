import 'package:flutter/material.dart';
import 'package:wemeet/discover/artist_list.dart';

import './featured_list.dart';
import './init_list.dart';
import './newest_list.dart';

class Discover extends StatelessWidget {
  final Function click;
  final list;
  var a;
  var mediaquery;

  Discover(
    this.click,
    this.list,
      this.mediaquery
  );
  MediaQueryData mediaQuery;

  Widget condition(list) {
    if (list == 'F') {
      a = FeaturedList();
      // a = 'F click';
    } else if (list == 'N') {
      a = NewestList();
      // a = 'N click';
    }
    //else if (list == 'R') {
    // a = Rank();

    else {
      a = InitList();
    }
    return a;
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 600,
      child: Column(
        children: <Widget>[
          Container(
              //    height: mediaquery.size.height * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    //     width: mediaQuery.size.width * 0.45,
                  child: Text(
                    'Today',
                    style: TextStyle(
                        // color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    //        width: mediaQuery.size.width * 0.25,
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
            height: 400,
            child: condition(a),
          ),
        ],
      ),
    );
  }
}
