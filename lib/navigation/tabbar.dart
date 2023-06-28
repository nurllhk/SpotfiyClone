import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotfiy/view/home.dart';
import 'package:spotfiy/view/lib.dart';
import 'package:spotfiy/view/premium.dart';
import 'package:spotfiy/view/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _select,
          onTap: (index) {
            setState(() {
              _select=index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks_outlined), label: 'Library'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.spotify), label: 'Premium'),
          ]),
      body:Stack(
        children: [
          ThisViewRende(0,HomeView()),
          ThisViewRende(1,Search()),
          ThisViewRende(2,Library()),
          ThisViewRende(3,Premium()),
        ],
      ),
    );
  }

  Widget ThisViewRende(int index,Widget view){

    return IgnorePointer(
      ignoring: _select!=index,
      child: Opacity(opacity: _select==index?1:0,
        child: view,),

    );
  }

}

