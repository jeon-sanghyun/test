import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
final Function click;

FeaturedList(this.click);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 230,
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('featured_list'),
          ),
        ),
        Container(
          height: 230,
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('list'),
          ),
        ),
        Container(
          height: 230,
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('list'),
          ),
        ),
        Container(
          height: 230,
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('list'),
          ),
        ),
        Container(
          height: 230,
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('list'),
          ),
        ),
        Container(
          height: 230,
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('list'),
          ),
        ),
      ],
    );
  }
}