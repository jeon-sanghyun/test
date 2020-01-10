import 'package:flutter/material.dart';
import 'package:wemeet/discover/discover.dart';

//import 'discover/artist_list.dart';
import 'rank.dart';

class BottomNaviBar extends StatefulWidget {

  final Function click;
  final list;
  var a;

  BottomNaviBar(
      this.click,
      this.list,
      );

  @override
  _BottomNaviBarState createState() => _BottomNaviBarState(click, list);
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int selectedIndex = 0;
  List<Map<String, Object>> pages;
  final Function click;
  final list;
  var a;

  _BottomNaviBarState(
      this.click,
      this.list,
      );



  @override
  void initState() {
    pages = [
      {
        'page': Discover(click,list),
        'title': 'Discover',
      },
      {
        'page': Rank(),
        'title': 'Rank',
      },
      // {'page' : My,
      // 'title': 'My',},
    ];
    super.initState();
  }

  void selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('appbar'),),
      body: pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Discover', style: TextStyle(fontWeight: FontWeight.bold,),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Rank', style: TextStyle(fontWeight: FontWeight.bold,),),
          ),
        ],
      ),
    );
  }
}
