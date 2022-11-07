import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodrecipe/color.dart';
import 'package:foodrecipe/screens/bookmark.dart';
import 'package:foodrecipe/screens/explore.dart';
import 'package:foodrecipe/screens/homescreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 1;

  void select(int page) {
    setState(() {
     index=page;
    });
  }

  List<Widget> pages = [
    const Explore(),
    const Homescreen(),
const Bookmark()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          
          onTap: select,
          selectedItemColor: primary,
          unselectedItemColor: inActiveColor,
          selectedIconTheme: const IconThemeData(color: primary),
          backgroundColor: bottomBarColor,
          items: [
            BottomNavigationBarItem(
              label: "Search",
              
                icon: SvgPicture.asset(
              "assets/icons/search.svg",
            
              height: 25,
              width: 25,
            )),
            BottomNavigationBarItem(
              label: "Home",
                icon: SvgPicture.asset("assets/icons/home.svg",
                    height: 25, width: 25)),
            BottomNavigationBarItem(
              label: "Bookmark",
                icon: SvgPicture.asset("assets/icons/bookmark.svg",
                    height: 25, width: 25)),
          ]),
    );
  }
}
