import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartingPage extends StatefulWidget {
  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "photogram",
                  style: TextStyle(
                    fontSize: 38,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset('assets/svg/ic_quantic.svg'),
                  title: Text(
                    "Quantic Jamoasi",
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    "Photogram beta 1.0",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 22),
                  child: Row(children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Colors.white,
                              side:
                              BorderSide(width: 1.5, color: Colors.black)),
                          child: Text(
                            'KIRISH',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/registration_first");
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.black,
                          ),
                          child: Text(
                            "RO'YXATDAN O'TISH",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
