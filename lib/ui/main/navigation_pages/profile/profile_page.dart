import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../home/home_page.dart';

class ProfilePage extends StatefulWidget {

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> imageList = [];

  // Map data = {};

  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context)!.settings.arguments as Map;
    //
    // String? name = data['name'];
    // String email = data['email'];
    // String password = data['password'];
    //
    // bool isNameKnown = name != null;

    loadImages();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 32),
                child: CircleAvatar(
                  radius: 40,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_img.png',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Visibility(
                // visible: isNameKnown,
                visible: true,
                child: Center(
                  child: Text(
                    // "Full name:\n$name",
                    "Umidaxon",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Comfortaa",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4),
              Center(
                  child: Text(
                // "Email: $email",
                "@umida12",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Comfortaa",
                ),
              )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.white,
                  side: BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                ),
                child: Text(
                  'xabar'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontFamily: "Comfortaa",
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  itemCount: imageList.length,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  itemBuilder: (context, index) => itemImage(imageList[index], context),
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                    side: BorderSide(width: 1.5, color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'ko’proq ko’rsatish'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loadImages() {
    for (int i = 24; i <= 29; i++) {
      imageList.add("assets/images/img_$i.png");
    }
  }
}
