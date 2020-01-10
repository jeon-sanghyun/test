import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 1, itemBuilder: (context,i){
      return Column(
        children: [
          Container(
            height: 290,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(children: [
                    Container(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 50,
                              width: 50,
                              child: Text('profile')),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'name',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'comment',
                                  style: Theme.of(context).textTheme.body2,
                                )
                              ],
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.grey[300],
                                  width: 2,
                                ),
                              ),
                              height: 50,
                              width: 50,
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_drop_up,
                                    size: 25,
                                  ),
                                  Text(
                                    '28',
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.live_tv),
                          SizedBox.fromSize(size: Size(10,0)),
                          Icon(Icons.camera_alt),
                          SizedBox.fromSize(size: Size(10,0)),
                          Text(
                            'category & follower',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        'youtube', style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ])),
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


      ;
    });
      
      /*ListView(children: [
      Column(
        children: [
          Container(
            height: 290,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(children: [
                    Container(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 50,
                              width: 50,
                              child: Text('profile')),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'name',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'comment',
                                  style: Theme.of(context).textTheme.body2,
                                )
                              ],
                            ),
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Colors.grey[300],
                                  width: 2,
                                ),
                              ),
                              height: 50,
                              width: 50,
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_drop_up,
                                    size: 25,
                                  ),
                                  Text(
                                    '28',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.live_tv),
                          SizedBox.fromSize(size: Size(10,0)),
                          Icon(Icons.camera_alt),
                          SizedBox.fromSize(size: Size(10,0)),
                          Text(
                            'category & follower',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        'youtube', style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ])),
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
      ),
    ]);*/
  }
}
