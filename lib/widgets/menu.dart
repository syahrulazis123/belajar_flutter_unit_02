import 'package:belajar_flutter1/explore_page.dart';
import 'package:belajar_flutter1/my_home_page.dart';
import 'package:belajar_flutter1/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int activeIndex = 0;

  List pages = [
    const ExplorePage(),
    const MyHomePage(),
    const SecondPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeIndex,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              activeIndex = index;
              print(activeIndex);
            });
          },

          // ignore: prefer_const_literals_to_create_immutables
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Discover",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv_sharp),
              label: "TV Views",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ]),
    );
  }
}
