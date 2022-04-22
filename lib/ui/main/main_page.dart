import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'navigation_pages/chat/chat_page.dart';
import 'navigation_pages/profile/profile_page.dart';
import 'navigation_pages/search/search_page.dart';
import 'navigation_pages/home/home_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Map data = {};

  int chosenPageIndex = 0;
  final pages = [
    HomePage(),
    SearchPage(),
    null,
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;

    String? name = data['name'];
    String email = data['email'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[chosenPageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1, color: Color(0xFFB3B3B3)),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          elevation: 0,
          selectedFontSize: 14,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              if(index!=2){
                chosenPageIndex = index;
              }
            });
          },
          currentIndex: chosenPageIndex,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: SvgPicture.asset(
                'assets/svg/ic_home.svg',
                height: 20.0,
                width: 20.0,
              ),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: SvgPicture.asset(
                'assets/svg/ic_search.svg',
                height: 20.0,
                width: 20.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xFFFF4B04),
                      Color(0xFFFF207E),
                      Color(0xFFFD00C1),
                    ],
                  )
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: Icon(Icons.add, color: Colors.white),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              label: "Chat",
              icon: SvgPicture.asset(
                'assets/svg/ic_chat.svg',
                height: 20.0,
                width: 20.0,
              ),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: SvgPicture.asset(
                'assets/svg/ic_person.svg',
                height: 20.0,
                width: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
