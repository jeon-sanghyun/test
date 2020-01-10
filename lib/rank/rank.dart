import 'package:flutter/material.dart';

class Rank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
       // appBar: AppBar(title: Text('appbar'),),
        body: Container(
        padding: EdgeInsets.all(20),
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Text('Wemeet ranking',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.white,),
                        child: Text('photo'),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(decoration: BoxDecoration(color: Colors.white,),
                              child: Text('artist name'),
                            ),
                            SizedBox(height: 3,),
                            Container(
                              decoration: BoxDecoration(color: Colors.white,),
                              child: Text('meet click counter'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(color: Colors.white,),
                        child: Text('photo'),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(decoration: BoxDecoration(color: Colors.white,),
                              child: Text('artist name'),
                            ),
                            SizedBox(height: 3,),
                            Container(
                              decoration: BoxDecoration(color: Colors.white,),
                              child: Text('meet click counter'),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
    ),
      );
  }
}
