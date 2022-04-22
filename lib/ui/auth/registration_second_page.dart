import 'package:flutter/material.dart';

class RegistrationSecondPage extends StatefulWidget {
  @override
  _RegistrationSecondPageState createState() => _RegistrationSecondPageState();
}

class _RegistrationSecondPageState extends State<RegistrationSecondPage> {
  final dataLogin = TextEditingController();
  bool _validate_login = false;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: Colors.white,
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
                controller: dataLogin,
                decoration: InputDecoration(
                  hintText: 'Full name',
                  errorText: _validate_login ? 'Enter your full name' : null,
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
                    "Ro’yxatdan o’tish".toUpperCase(),
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
                    if(dataLogin.text.isEmpty){
                      _validate_login = true;
                    }else{
                      _validate_login = false;
                      Navigator.pushNamed(context, "/main", arguments: {
                        'email': data['email'],
                        'password':data['password'],
                        'name': dataLogin.text.toString()
                      });
                    }
                  });

                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                    ),
                    children: const [
                      TextSpan(
                        text: "Ro’yxat o’tish tugmasini bosish orqali siz ",
                      ),
                      TextSpan(
                        text: "photogram ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "ijtimoiy tarog’ining ",
                      ),
                      TextSpan(
                        text: "Foydalanish shartlari ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "va ",
                      ),
                      TextSpan(
                        text: "Xavfsizlik qoidalariga ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: "rozilik bildirgan bo’lasiz.",
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
