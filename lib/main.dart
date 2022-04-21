import 'package:flutter/material.dart';
import 'package:gallery_app/ui/home_page.dart';
import 'package:gallery_app/ui/login_page.dart';
import 'package:gallery_app/ui/registration_first_page.dart';
import 'package:gallery_app/ui/registration_second_page.dart';
import 'package:gallery_app/ui/starting_page.dart';

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
      },
    );
  }
}
