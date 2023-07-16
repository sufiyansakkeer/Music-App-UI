// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:music_app/core/constants.dart';

class TrendingContainer extends StatelessWidget {
  const TrendingContainer({
    Key? key,
    required this.imageString,
    required this.colorContainer,
  }) : super(key: key);
  final String imageString;
  final Color colorContainer;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            border: Border.all(color: Colors.transparent),
            image: DecorationImage(
              image: AssetImage(
                imageString,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.more_horiz_outlined,
                color: Colors.white,
              ),
              //small container
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width * 0.53,
                decoration: BoxDecoration(
                  color: colorContainer,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "The Dark Side",
                            style: TextStyle(fontSize: 20),
                          ),
                          height10,
                          const Text(
                            "₰ Muse Simulation Theory",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.play_circle_fill_outlined,
                        color: Colors.white,
                        size: 50,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
