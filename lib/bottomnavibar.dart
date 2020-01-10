import 'package:flutter/material.dart';

import './discover/artist_list.dart';
import './meet/meet.dart';
import './my/my.dart';
import './rank/rank.dart';

class BottomNaviBar extends StatefulWidget {
  BottomNaviBar();

  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int selectedIndex = 0;
  List<Map<String, Object>> pages;

  _BottomNaviBarState();

  MediaQueryData mediaQuery;

  @override
  void initState() {
    pages = [
      {
        'page': ArtistList(),
        'title': 'Discover',
      },
      {
        'page': Rank(),
        'title': 'Rank',
      },
      {
        'page': My(),
        'title': 'My',
      },
      {
        'page': Meet(),
        'title': 'Meet',
      },
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
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: pages[selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Discover',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text(
              'Rank',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(
              'My',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grade),
            title: Text(
              'Meet',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
