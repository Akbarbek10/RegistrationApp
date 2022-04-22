import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../home/home_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> imageList = [];

  @override
  Widget build(BuildContext context) {
    loadImages();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 28,
              ),
              Text(
                "Izlash",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Comfortaa',
                ),
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
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
                height: 18,
              ),
              Text(
                "barcha natijalar".toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  itemCount: imageList.length,
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  itemBuilder: (context, index) => itemImage(imageList[index], context),
                  staggeredTileBuilder: (index) => StaggeredTile.count(1,1),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                    side:
                    BorderSide(width: 1.5, color: Colors.black)),
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
    for (int i = 9; i <= 23; i++) {
      imageList.add("assets/images/img_$i.png");
    }
  }
}



