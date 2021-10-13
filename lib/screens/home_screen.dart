import 'package:flutter/material.dart';
import 'package:flutter_application/styles/theme.dart' as Style;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double coverHeight = 195.2;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 45,
            decoration: const BoxDecoration(
                color: Style.Colors.secondColor,
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/831762.jpg"))),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    CategoryCard(
                      coverHeight: coverHeight,
                      imgSrc: "assets/img1.jpg",
                    ),
                    CategoryCard(
                      coverHeight: coverHeight,
                      imgSrc: "assets/img2.jpg",
                    ),
                    CategoryCard(
                      coverHeight: coverHeight,
                      imgSrc: "assets/img3.jpg",
                    ),
                    CategoryCard(
                      coverHeight: coverHeight,
                      imgSrc: "assets/img4.jpg",
                    ),
                    CategoryCard(
                      coverHeight: coverHeight,
                      imgSrc: "assets/img5.jpg",
                    ),
                    CategoryCard(
                      coverHeight: coverHeight,
                      imgSrc: "assets/img6.jpg",
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imgSrc;
  const CategoryCard({
    Key? key,
    required this.coverHeight,
    required this.imgSrc,
  }) : super(key: key);

  final double coverHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            imgSrc,
            width: double.infinity,
            height: coverHeight,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
