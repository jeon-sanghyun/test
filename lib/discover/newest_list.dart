import 'package:flutter/material.dart';

class NewestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 230,
            width: double.infinity,
            child: Card(
              elevation: 5,
              child: Text('Newest_list'),
            ),
          ),
        ],
      ),]
    );
  }
}
