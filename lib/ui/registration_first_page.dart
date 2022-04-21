import 'package:flutter/material.dart';

class RegistrationFirstPage extends StatefulWidget {
  @override
  _RegistrationFirstPageState createState() => _RegistrationFirstPageState();
}

class _RegistrationFirstPageState extends State<RegistrationFirstPage> {
  final data_email = TextEditingController();
  final data_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(
            height: 32,
          ),
          Text(
            "Ro’yxatdan o’tish",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'Comfortaa',
            ),
          ),
          SizedBox(
            height: 24,
          ),
          TextField(
            controller: data_email,
            decoration: InputDecoration(
                hintText: 'Email address',
                contentPadding: EdgeInsets.symmetric(vertical: 6,
                horizontal: 12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.black,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          controller: data_password,
          decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.black,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TextButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Keyingisi".toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/registration_second", arguments: {
              'email': data_email.text.toString(),
              'password': data_password.text.toString(),
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Colors.blue,
                Colors.green,
                Colors.orange,
                Colors.red,
                Colors.purple
              ],
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.4),
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Google bilan ro’yxatdan o’tish".toUpperCase(),
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
            ),
          ),
        )
        ],
      ),
    ),)
    ,
    );
  }
}
