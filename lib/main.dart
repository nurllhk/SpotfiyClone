import 'package:flutter/material.dart';

import 'navigation/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotfiy Nk',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.white12,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: TextStyle(fontSize: 12),
              unselectedLabelStyle: TextStyle(fontSize: 12))),
      home: const Tabbar(),
    );
  }
}
