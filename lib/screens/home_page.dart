import 'dart:html';

import 'package:creative_project/screens/nav_bar_pages/categories_screen.dart';
import 'package:creative_project/screens/nav_bar_pages/main_screen.dart';
import 'package:creative_project/screens/nav_bar_pages/settings_screen.dart';
import 'package:creative_project/screens/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int pageIndex = 0;
  List<Widget> pages = [MainScreen(), CategoriesScreen(), SettingScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.white,
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.exit_to_app), Text("signout")],
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffe7306c),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: onNavBarTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }

  onNavBarTapped(int index) {
    pageIndex = index;
    setState(() {});
  }
}
