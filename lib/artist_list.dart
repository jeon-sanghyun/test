import 'package:flutter/material.dart';

import './featured_list.dart';
import './newest_list.dart';
import './init_list.dart';

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
      a=FeaturedList();
     // a = 'F click';
    } else if (list == 'N') {
      a=NewestList();
     // a = 'N click';
    }
    else {
      a = InitList();
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: condition(list),
    );
  }
}
