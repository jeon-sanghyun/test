import 'package:flutter/material.dart';

import './bottomnavibar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  String listselect = 'asdasd';

  void click(String a) {
    listselect = a;
    //  print(listselect);
    setState(() {
      print(listselect);
    });
    //  return a;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Color(0xfff82462),
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 255, 255, 0.95),
        // fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(1, 1, 1, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 0.7),
              ),
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => BottomNaviBar(click, listselect),
      },
    );

//       Row(children: <Widget>[
//         Container(child: Text(
//           'WE_MEET',
//           textAlign: TextAlign.start,
//           style: TextStyle(
//             color: Theme.of(context).primaryColor,
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//             fontStyle: FontStyle.italic,
//           ),
//         ),),
//         Container(child: Text('기억안나는 기능의 키 공간'),),
//         Container(child: Icon(
//           Icons.search,
//           size: 40,
//         ),),
//       ],
    //    ),

//      body: Container(
//        padding: EdgeInsets.only(top: 23, bottom: 10, left: 10, right: 10),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: [
//            Container(
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: [
//                  Container(
//                    width: (mediaQuery.size.width -
//                            mediaQuery.padding.right -
//                            mediaQuery.padding.left) *
//                        0.6,
//                    child: Text(
//                      'WE_MEET',
//                      textAlign: TextAlign.start,
//                      style: TextStyle(
//                        color: Theme.of(context).primaryColor,
//                        fontSize: 30,
//                        fontWeight: FontWeight.bold,
//                        fontStyle: FontStyle.italic,
//                      ),
//                    ),
//                  ),
//                  Container(
//                    color: Theme.of(context).primaryColor,
//                    width: (mediaQuery.size.width -
//                            mediaQuery.padding.right -
//                            mediaQuery.padding.left) *
//                        0.15,
//                    child: Text('기억안나는 기능의 키 공간'),
//                  ),
//                  Container(
//                    child: Icon(
//                      Icons.search,
//                      size: 40,
//                    ),
//                  ),
//                ],
//              ),
//            ),
//
//            Container(
//              height: mediaQuery.size.height * 0.1,
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: [
//                  Container(
//                    width: mediaQuery.size.width * 0.45,
//                    child: Text(
//                      'Today',
//                      style: TextStyle(
//                          // color: Colors.white,
//                          fontSize: 30,
//                          fontWeight: FontWeight.bold),
//                    ),
//                  ),
//                  Container(
//                    width: mediaQuery.size.width * 0.25,
//                    child: FlatButton(
//                      child: Text('Featured'),
//                      onPressed: () {
//                        click('F');
//                      },
//                    ),
//                  ),
//                  Container(
//                    width: mediaQuery.size.width * 0.25,
//                    child: FlatButton(
//                      child: Text('Newest'),
//                      onPressed: () {
//                        click('N');
//                      },
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            Container(
//              height: mediaQuery.size.height * 0.35,
//              child: ArtistList(click, listselect),
//            ),
//            Container(
//              child: BottomNaviBar(click,listselect),
//            ),
//            /*
//            Container(
//              height: mediaQuery.size.height * 0.1,
//              color: Theme.of(context).primaryColor,
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: [
//                  Text(
//                    'Discover',
//                    style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 30,
//                        fontWeight: FontWeight.bold),
//                  ),
//                  FlatButton(
//                    child:
//                    Text(
//                      'Rank',
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontSize:
//                          30,
//                          fontWeight: FontWeight.bold),
//                    ), onPressed: () {click('R');},
//                  ),
//
//                ],
//              ),
//            )
//            */
//          ],
//        ),
//      ),


    //   );
  }
}
