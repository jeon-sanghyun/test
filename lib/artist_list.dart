import 'package:flutter/material.dart';
import './featured_list.dart';
import './newest_list.dart';

class ArtistList extends StatelessWidget {
  final String list;

  ArtistList(this.list);

  @override
  Widget build(BuildContext context) {
    print(list);

  }
}
