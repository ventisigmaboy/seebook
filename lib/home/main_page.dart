import 'package:flutter/material.dart';
import 'package:seebook/model/nav_items_model.dart';
import 'package:seebook/pages/home_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / bottomNavItems.length;
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 22),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          children: List.generate(
            bottomNavItems.length,
            (index) => Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: 2,
                      width: _selectedIndex == index ? itemWidth : 0, 
                      decoration: BoxDecoration(
                        color: _selectedIndex == index ? Colors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Image.asset(
                      _selectedIndex == index
                          ? bottomNavItemsSelected[index].iconPath
                          : bottomNavItems[index].iconPath,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
