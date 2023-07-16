import 'package:flutter/material.dart';
import 'package:music_app/core/colors.dart';

import '../../core/constants.dart';

class HomAppBar extends StatelessWidget {
  const HomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.3),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        width10,
        Expanded(
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            color: whiteOpacity,
            child: TextField(
              onChanged: (query) {
                // overViewListNotifier.notifyListeners();
              },
              decoration: const InputDecoration(
                  filled: true,
                  hintText: 'Search..',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
        )
      ],
    );
  }
}
