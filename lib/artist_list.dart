import 'package:flutter/material.dart';

class ArtistList extends StatelessWidget {
  final Function click;
  final  list;
  String a;

  ArtistList(
    this.click,
    this.list,
  );

  String condition(list) {
    if (list == 'F') {
      a = 'F click';
      print(a);
    } else if (list == 'N') {
      a = 'N click';
      print(a);
    } else {
      a = 'no click';
      print(a);
    }
   return a;
  }

//  String get resultcondition {
//    String resultlist;
//    if (list == 'F') {
//      resultlist = 'f click';
//    } else if (list == 'N') {
//      resultlist = 'n click';
//    } else {
//      resultlist = 'no click';
//    }
//    return resultlist;
//  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(condition(list).toString()));
  }
}
