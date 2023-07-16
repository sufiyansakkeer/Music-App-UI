// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MusicTypeContainer extends StatelessWidget {
  const MusicTypeContainer({
    Key? key,
    required this.text,
    required this.gradientBool,
  }) : super(key: key);
  final String text;

  final bool gradientBool;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      decoration: BoxDecoration(
        // color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        gradient: gradientBool
            ? const LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.white,
                ],
              )
            : null,
      ),

      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}
