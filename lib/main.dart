import 'package:flutter/material.dart';

import './artist_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'We Meet title',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Color(0xfff82462),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String as='asdasd';

  void click(String a) {
    as =a;
    print(as);
    setState(() {
      print(as);
    });
   //  return a;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      // appBar: AppBar(
      // title: Text(widget.title),
      //   ),
      body: Container(
        padding: EdgeInsets.only(top: 23, bottom: 10, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: (mediaQuery.size.width -
                            mediaQuery.padding.right -
                            mediaQuery.padding.left) *
                        0.6,
                    child: Text(
                      'WE_MEET',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).primaryColor,
                    width: (mediaQuery.size.width -
                            mediaQuery.padding.right -
                            mediaQuery.padding.left) *
                        0.15,
                    child: Text('기억안나는 기능의 키 공간'),
                  ),
                  Container(
                    child: Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: mediaQuery.size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: mediaQuery.size.width * 0.45,
                    child: Text(
                      'Today',
                      style: TextStyle(
                          // color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: mediaQuery.size.width * 0.25,
                    child: FlatButton(
                      child: Text('Featured'),
                      onPressed: () {click('F');},
                    ),
                  ),
                  Container(
                    width: mediaQuery.size.width * 0.25,
                    child: FlatButton(
                      child: Text('Newest'),
                      onPressed: () {click('N');},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: mediaQuery.size.height * 0.55,
              child:
              ArtistList(click, as),),
            Container(child: Text(as),),
            Container(
              height: mediaQuery.size.height * 0.1,
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Discover',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rank',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'My',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
      //     ),
    );
  }
}
