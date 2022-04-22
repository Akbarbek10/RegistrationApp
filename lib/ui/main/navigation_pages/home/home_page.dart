import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "photogram",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Comfortaa',
                ),
              ),
              SizedBox(
                height: 18,
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
              )
            ],
          ),
        ),
      ),
    );
  }

  void loadImages() {
    for (int i = 1; i <= 8; i++) {
      imageList.add("assets/images/img_$i.png");
    }
  }
}

Widget itemImage(String imgUrl, BuildContext context) {
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, "/show_image", arguments: {
        "image_profile":imgUrl,
      });
    },
    child: Container(
      child: Image(
        image: AssetImage(imgUrl),
        fit: BoxFit.cover,
      ),
    ),
  );
}
