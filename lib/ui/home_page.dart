import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;

    String? name = data['name'];
    String email = data['email'];
    String password = data['password'];

    bool isNameKnown = name != null;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 15, left: 15, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
              SizedBox(height: 10),
              Visibility(
                visible: isNameKnown,
                child: Center(
                  child: Text(
                    "Full name:\n$name",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontFamily: "Comfortaa"),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                  child: Text(
                "Email: $email",
                style: TextStyle(fontSize: 16, fontFamily: "Comfortaa"),
              )),
              SizedBox(height: 5),
              Center(
                  child: Text(
                "Password: $password",
                style: TextStyle(fontSize: 14, fontFamily: "Comfortaa"),
              )),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      side: BorderSide(width: 1.5, color: Colors.black)),
                  child: Text('XABAR',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.bold)),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
