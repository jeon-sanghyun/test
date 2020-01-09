import 'package:flutter/material.dart';
import 'package:wemeet/init_list.dart';

import 'rank.dart';

class BottomNaviBar extends StatefulWidget {


  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int selectedIndex = 0;
  List<Map<String, Object>> pages;

  @override
  void initState() {
    pages = [
      {
        'page': InitList(),
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
      //appBar:App,
      body: pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Discover'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Rank'),
          ),
        ],
      ),
    );
  }
}
