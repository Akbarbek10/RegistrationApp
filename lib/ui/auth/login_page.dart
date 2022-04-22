import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final dataEmail = TextEditingController();
  final dataPassword = TextEditingController();

  bool _validate_email = false;
  bool _validate_password = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                  "Kirish",
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
                  controller: dataEmail,
                  decoration: InputDecoration(
                    hintText: 'Email address',
                    errorText: _validate_email ? 'Email address can\'t be empty' : null,
                    contentPadding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
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
                TextField(
                  controller: dataPassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    errorText: _validate_password ? 'Password can\'t be empty' : null,
                    contentPadding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),
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
                      "Kirish".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      dataEmail.text.isEmpty ? _validate_email = true : _validate_email = false;
                      dataPassword.text.isEmpty ? _validate_password = true : _validate_password = false;
                    });

                    if(dataEmail.text.isNotEmpty && dataPassword.text.isNotEmpty){
                      Navigator.pushNamed(context, "/main", arguments: {
                        'email': dataEmail.text.toString(),
                        'password': dataPassword.text.toString(),
                      });
                    }

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
                          "Google bilan kirish".toUpperCase(),
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
          ),
        ),
      ),
    );
  }
}
