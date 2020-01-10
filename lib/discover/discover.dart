import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  final Function click;
  final list;
  var a;

  Discover(
    this.click,
    this.list,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
      ],
    );
  }
}
