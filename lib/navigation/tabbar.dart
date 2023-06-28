import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotfiy/classes/default_key.dart';
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
                icon: Icon(Icons.home_outlined), label: DefaultKey.home,),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: DefaultKey.search),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks_outlined), label: DefaultKey.library),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.spotify), label: DefaultKey.premium),
          ]),
      body:Stack(
        children: [
          thisViewRende(0,const HomeView()),
          thisViewRende(1,const Search()),
          thisViewRende(2,const Library()),
          thisViewRende(3,const Premium()),
        ],
      ),
    );
  }

  Widget thisViewRende(int index,Widget view){

    return IgnorePointer(
      ignoring: _select!=index,
      child: Opacity(opacity: _select==index?1:0,
        child: view,),

    );
  }

}

