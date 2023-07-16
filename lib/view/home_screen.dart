import 'package:flutter/material.dart';
import 'package:music_app/core/colors.dart';
import 'package:music_app/core/constants.dart';
import 'package:music_app/view/widgets/music_type_container.dart';
import 'package:music_app/view/widgets/trending_container.dart';

import 'widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // background color for the scaffold
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // app bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const HomAppBar(),
              ),
              height20,
              // header text

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  "Trending right now",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              height20,
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    width20,
                    TrendingContainer(
                      imageString: "assets/images/image2.jpg",
                      colorContainer: const Color(0xFF8519B8).withOpacity(0.5),
                    ),
                    width20,
                    TrendingContainer(
                      imageString: "assets/images/image1.jpg",
                      colorContainer: const Color(0xFF9C27B0).withOpacity(0.5),
                    ),
                    width20,
                    TrendingContainer(
                      imageString: "assets/images/image3.jpeg",
                      colorContainer: const Color(0xFF1100FF).withOpacity(0.5),
                    ),
                    width20,
                  ],
                ),
              ),
              height20,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      width20,
                      const MusicTypeContainer(
                        text: 'Trending right now',
                        gradientBool: true,
                      ),
                      width20,
                      const MusicTypeContainer(
                        text: 'Rock',
                        gradientBool: false,
                      ),
                      width20,
                      const MusicTypeContainer(
                        text: 'Hip pop',
                        gradientBool: false,
                      ),
                      width20,
                      const MusicTypeContainer(
                        text: 'Electro',
                        gradientBool: false,
                      ),
                      width20,
                      const MusicTypeContainer(
                        text: 'Electro',
                        gradientBool: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
