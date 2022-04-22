import 'package:flutter/material.dart';
import 'package:gallery_app/ui/main/main_page.dart';
import 'package:gallery_app/ui/auth/login_page.dart';
import 'package:gallery_app/ui/auth/registration_first_page.dart';
import 'package:gallery_app/ui/auth/registration_second_page.dart';
import 'package:gallery_app/ui/auth/starting_page.dart';
import 'package:gallery_app/ui/main/navigation_pages/chat/chat_info_page.dart';
import 'package:gallery_app/ui/main/navigation_pages/chat/chat_page.dart';
import 'package:gallery_app/ui/main/navigation_pages/home/home_page.dart';
import 'package:gallery_app/ui/main/navigation_pages/profile/profile_page.dart';
import 'package:gallery_app/ui/main/navigation_pages/search/search_page.dart';
import 'package:gallery_app/ui/main/navigation_pages/show_img/show_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery App',
      routes: {
         '/':(context) => StartingPage(),
         '/registration_first':(context) => RegistrationFirstPage(),
         '/registration_second':(context) => RegistrationSecondPage(),
         '/login':(context) => LoginPage(),
         '/home':(context) => HomePage(),
         '/chat':(context) => ChatPage(),
         '/chat_info':(context) => ChatInfoPage(),
         '/search':(context) => SearchPage(),
         '/profile':(context) => ProfilePage(),
         '/main':(context) => MainPage(),
         '/show_image':(context) => ShowImagePage(),
      },
    );
  }
}
