import 'package:ffffiff/features/bookmark/view/bookmark_screen.dart';
import 'package:ffffiff/features/home/view/home_screen.dart';
import 'package:ffffiff/features/search/view/search_screen.dart';
import 'package:flutter/material.dart';
import '../../profile/view/profile_screen.dart';

class MainWidgetScreen extends StatefulWidget {
  const MainWidgetScreen({super.key});

  @override
  State<MainWidgetScreen> createState() => _MainWidgetScreenState();
}
int currentIndex=0;
List<Widget>pages=[
  const HomeScreen(),
  const SearchScreen(),
  const BookMarkScreen(),
  const ProfileScreen(),
];

class _MainWidgetScreenState extends State<MainWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation:0.1,
          unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 12,
          ),
          selectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 12,
          ),
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'BookMark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}